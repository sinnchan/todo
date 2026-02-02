import { defineBackend } from '@aws-amplify/backend';
import type { ITable } from 'aws-cdk-lib/aws-dynamodb';
import { auth } from './auth/resource';
import { data } from './data/resource';
import { taskLimitHandler } from './functions/task-limit/resource';

const backend = defineBackend({
  auth,
  data,
  taskLimitHandler,
});

const taskTable = findTable(backend.data.resources.tables, 'Task');
const counterTable = findTable(backend.data.resources.tables, 'UserTaskCounter');

taskTable.grantReadWriteData(backend.taskLimitHandler.resources.lambda);
counterTable.grantReadWriteData(backend.taskLimitHandler.resources.lambda);

backend.taskLimitHandler.addEnvironment('TASK_TABLE_NAME', taskTable.tableName);
backend.taskLimitHandler.addEnvironment(
  'COUNTER_TABLE_NAME',
  counterTable.tableName,
);
backend.taskLimitHandler.addEnvironment('TASK_LIMIT', '1000');

function findTable(
  tables: Record<string, ITable>,
  modelName: string,
) {
  const target = modelName.toLowerCase();
  const entries = Object.entries(tables);
  const exact = entries.find(
    ([key, table]) =>
      key.toLowerCase() == `${target}table` ||
      table.node.id.toLowerCase() == `${target}table`,
  );
  if (exact) return exact[1];

  const byPath = entries.find(([, table]) =>
    table.node.path.toLowerCase().includes(`/${target}/`),
  );
  if (byPath) return byPath[1];

  const fallback = entries.find(
    ([key, table]) =>
      key.toLowerCase().startsWith(target) ||
      table.node.id.toLowerCase().startsWith(target),
  );
  const entry = fallback;
  if (!entry) {
    const keys = Object.keys(tables).join(', ');
    throw new Error(`Table for ${modelName} not found. Available: ${keys}`);
  }
  return entry[1];
}
