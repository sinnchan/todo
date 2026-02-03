import { DynamoDBClient } from '@aws-sdk/client-dynamodb';
import {
  DynamoDBDocumentClient,
  GetCommand,
  TransactWriteCommand,
} from '@aws-sdk/lib-dynamodb';

const taskTableName = process.env.TASK_TABLE_NAME;
const counterTableName = process.env.COUNTER_TABLE_NAME;
const taskLimit = Number.parseInt(process.env.TASK_LIMIT ?? '1000', 10);

if (!taskTableName || !counterTableName) {
  throw new Error('Missing DynamoDB table configuration');
}

const ddb = DynamoDBDocumentClient.from(new DynamoDBClient({}), {
  marshallOptions: {
    removeUndefinedValues: true,
  },
});

type AppSyncEvent = {
  arguments?: Record<string, unknown>;
  identity?: {
    sub?: string;
    username?: string;
    claims?: Record<string, string>;
  };
  info?: {
    fieldName?: string;
  };
};

export const handler = async (event: AppSyncEvent) => {
  const owner = resolveOwner(event.identity);
  const fieldName = event.info?.fieldName ?? resolveFieldName(event.arguments);

  switch (fieldName) {
    case 'createTaskWithLimit':
      return createTask(owner, event.arguments ?? {});
    case 'deleteTaskWithLimit':
      return deleteTask(owner, event.arguments ?? {});
    default:
      throw new Error(`Unsupported operation: ${fieldName ?? 'unknown'}`);
  }
};

function resolveFieldName(args?: Record<string, unknown>): string | undefined {
  if (!args) {
    return undefined;
  }
  if ('title' in args || 'createdAt' in args || 'updatedAt' in args) {
    return 'createTaskWithLimit';
  }
  if ('id' in args) {
    return 'deleteTaskWithLimit';
  }
  return undefined;
}

function resolveOwner(identity?: AppSyncEvent['identity']): string {
  const owner =
    identity?.sub ??
    identity?.claims?.sub ??
    identity?.username ??
    identity?.claims?.['cognito:username'];
  if (!owner) {
    throw new Error('Unauthorized');
  }
  return owner;
}

async function createTask(owner: string, args: Record<string, unknown>) {
  const id = asString(args.id, 'id');
  const title = asString(args.title, 'title');
  const createdAt = asString(args.createdAt, 'createdAt');
  const updatedAt = asString(args.updatedAt, 'updatedAt');
  const description = asOptionalString(args.description);
  const datetime = asOptionalString(args.datetime);
  const isCompleted =
    typeof args.isCompleted === 'boolean' ? args.isCompleted : false;

  const item = {
    id,
    owner,
    title,
    description,
    datetime,
    createdAt,
    updatedAt,
    isCompleted,
  };

  try {
    await ddb.send(
      new TransactWriteCommand({
        TransactItems: [
          {
            Update: {
              TableName: counterTableName,
              Key: { id: owner },
              UpdateExpression:
                'SET #count = if_not_exists(#count, :zero) + :one, #owner = if_not_exists(#owner, :owner)',
              ConditionExpression:
                'attribute_not_exists(#count) OR #count < :limit',
              ExpressionAttributeNames: {
                '#count': 'count',
                '#owner': 'owner',
              },
              ExpressionAttributeValues: {
                ':zero': 0,
                ':one': 1,
                ':limit': taskLimit,
                ':owner': owner,
              },
            },
          },
          {
            Put: {
              TableName: taskTableName,
              Item: item,
              ConditionExpression: 'attribute_not_exists(#id)',
              ExpressionAttributeNames: { '#id': 'id' },
            },
          },
        ],
      }),
    );
  } catch (error) {
    if (
      typeof error === 'object' &&
      error != null &&
      'name' in error &&
      (error as { name: string }).name === 'ConditionalCheckFailedException'
    ) {
      throw new Error('Task limit reached');
    }
    throw error;
  }

  return item;
}

async function deleteTask(owner: string, args: Record<string, unknown>) {
  const id = asString(args.id, 'id');
  const existing = await ddb.send(
    new GetCommand({
      TableName: taskTableName,
      Key: { id },
    }),
  );

  if (!existing.Item) {
    return null;
  }
  if (existing.Item.owner !== owner) {
    throw new Error('Unauthorized');
  }

  await ddb.send(
    new TransactWriteCommand({
      TransactItems: [
        {
          Update: {
            TableName: counterTableName,
            Key: { id: owner },
            UpdateExpression: 'SET #count = #count - :one',
            ConditionExpression: '#count >= :one',
            ExpressionAttributeNames: {
              '#count': 'count',
            },
            ExpressionAttributeValues: {
              ':one': 1,
            },
          },
        },
        {
          Delete: {
            TableName: taskTableName,
            Key: { id },
            ConditionExpression: '#owner = :owner',
            ExpressionAttributeNames: { '#owner': 'owner' },
            ExpressionAttributeValues: { ':owner': owner },
          },
        },
      ],
    }),
  );

  return existing.Item;
}

function asString(value: unknown, name: string): string {
  if (typeof value !== 'string' || value.trim().length == 0) {
    throw new Error(`Missing ${name}`);
  }
  return value;
}

function asOptionalString(value: unknown): string | undefined {
  if (typeof value === 'string' && value.trim().length > 0) {
    return value;
  }
  return undefined;
}
