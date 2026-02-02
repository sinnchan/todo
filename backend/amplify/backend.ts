import { defineBackend } from '@aws-amplify/backend';
import { auth } from './auth/resource';
import { data } from './data/resource';
import { taskLimitHandler } from './functions/task-limit/resource';

const backend = defineBackend({
  auth,
  data,
  taskLimitHandler,
});

const taskTable = backend.data.resources.tables['TaskTable'];
const counterTable = backend.data.resources.tables['UserTaskCounterTable'];

taskTable.grantReadWriteData(backend.taskLimitHandler.resources.lambda);
counterTable.grantReadWriteData(backend.taskLimitHandler.resources.lambda);

backend.taskLimitHandler.addEnvironment('TASK_TABLE_NAME', taskTable.tableName);
backend.taskLimitHandler.addEnvironment(
  'COUNTER_TABLE_NAME',
  counterTable.tableName,
);
backend.taskLimitHandler.addEnvironment('TASK_LIMIT', '1000');
