import { type ClientSchema, a, defineData } from '@aws-amplify/backend';

const schema = a.schema({
  Task: a
    .model({
      owner: a.string(),
      title: a.string().required(),
      description: a.string(),
      order: a.integer(),
      datetime: a.datetime().required(),
      isCompleted: a.boolean().default(false).required(),
    })
    .authorization((allow) => [allow.ownerDefinedIn('owner')])
    .secondaryIndexes((index) => [
      index('owner')
        .sortKeys(['datetime'])
        .name('byOwnerDatetime')
        .queryField('tasksByOwnerDatetime'),
    ]),
});

export type Schema = ClientSchema<typeof schema>;

export const data = defineData({
  schema,
  authorizationModes: {
    defaultAuthorizationMode: 'userPool',
  },
});

