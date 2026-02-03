import { type ClientSchema, a, defineData } from '@aws-amplify/backend';
import { taskLimitHandler } from '../functions/task-limit/resource';

const schema = a.schema({
  Task: a
    .model({
      owner: a.string(),
      title: a.string().required(),
      description: a.string(),
      datetime: a.datetime(),
      createdAt: a.datetime().required(),
      updatedAt: a.datetime().required(),
      isCompleted: a.boolean().default(false).required(),
    })
    .authorization((allow) => [
      allow
        .ownerDefinedIn('owner')
        .identityClaim('sub')
        .to(['read', 'update', 'delete']),
    ])
    .secondaryIndexes((index) => [
      index('owner')
        .sortKeys(['datetime'])
        .name('byOwnerDatetime')
        .queryField('tasksByOwnerDatetime'),
      index('owner')
        .sortKeys(['createdAt'])
        .name('byOwnerCreatedAt')
        .queryField('tasksByOwnerCreatedAt'),
      index('owner')
        .sortKeys(['updatedAt'])
        .name('byOwnerUpdatedAt')
        .queryField('tasksByOwnerUpdatedAt'),
      index('owner')
        .sortKeys(['title'])
        .name('byOwnerTitle')
        .queryField('tasksByOwnerTitle'),
    ]),
  UserTaskCounter: a
    .model({
      owner: a.string().required(),
      count: a.integer().required().default(0),
    })
    .authorization((allow) => [
      allow.ownerDefinedIn('owner').identityClaim('sub').to(['read']),
    ]),
  createTaskWithLimit: a
    .mutation()
    .arguments({
      id: a.id().required(),
      title: a.string().required(),
      description: a.string(),
      datetime: a.datetime(),
      createdAt: a.datetime().required(),
      updatedAt: a.datetime().required(),
      isCompleted: a.boolean(),
    })
    .returns(a.ref('Task'))
    .authorization((allow) => [allow.authenticated()])
    .handler(a.handler.function(taskLimitHandler)),
  deleteTaskWithLimit: a
    .mutation()
    .arguments({
      id: a.id().required(),
    })
    .returns(a.ref('Task'))
    .authorization((allow) => [allow.authenticated()])
    .handler(a.handler.function(taskLimitHandler)),
});

export type Schema = ClientSchema<typeof schema>;

export const data = defineData({
  schema,
  authorizationModes: {
    defaultAuthorizationMode: 'userPool',
  },
});
