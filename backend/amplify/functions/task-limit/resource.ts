import { defineFunction } from '@aws-amplify/backend';

export const taskLimitHandler = defineFunction({
  name: 'taskLimitHandler',
  entry: './handler.ts',
});
