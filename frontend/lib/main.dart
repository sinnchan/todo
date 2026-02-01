import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/app/share/logger.dart';
import 'package:todo/infra/api/amplify/gen/amplify_outputs.dart';
import 'package:todo/infra/api/amplify/gen/models/ModelProvider.dart';
import 'package:todo/ui/application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initApp();

  runApp(
    ProviderScope(child: const Application()),
  );
}

Future<void> _initApp() async {
  try {
    await Amplify.addPlugins([
      AmplifyAuthCognito(),
      AmplifyAPI(
        options: APIPluginOptions(
          modelProvider: ModelProvider.instance,
        ),
      ),
    ]);
    await Amplify.configure(amplifyConfig);
  } catch (e, st) {
    logger.e('failed to init app.', e, st);
  }

  logger.i('successfully init app');
}
