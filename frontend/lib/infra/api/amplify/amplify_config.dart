import 'package:todo/infra/api/amplify/gen/config/develop/amplify_outputs.dart'
    as dev_config;
import 'package:todo/infra/api/amplify/gen/config/main/amplify_outputs.dart'
    as prod_config;
import 'package:todo/infra/api/amplify/gen/config/sandbox/amplify_outputs.dart'
    as sandbox_config;

const amplifyEnv = String.fromEnvironment('ENV', defaultValue: 'sandbox');

String get amplifyConfig {
  switch (amplifyEnv) {
    case 'prod':
      return prod_config.amplifyConfig;
    case 'dev':
      return dev_config.amplifyConfig;
    case 'sandbox':
      return sandbox_config.amplifyConfig;
  }
  throw StateError('Unknown ENV: $amplifyEnv. Use prod/dev/sandbox.');
}
