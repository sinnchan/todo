import { type ClientSchema, a, defineData } from '@aws-amplify/backend';

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
    .authorization((allow) => [allow.ownerDefinedIn('owner')])
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
});

export type Schema = ClientSchema<typeof schema>;

export const data = defineData({
  schema,
  authorizationModes: {
    defaultAuthorizationMode: 'userPool',
  },
});
