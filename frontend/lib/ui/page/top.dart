import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/ui/route/router.dart';
import 'package:todo/ui/share/single_child_builder.dart';

class TopPage extends HookConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Authenticator(
      child: SingleChildBuilder(
        builder: Authenticator.builder(),
        child: Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                SettingsRoute(userId: 'user').push(context);
              },
              child: Text('go settings'),
            ),
          ),
        ),
      ),
    );
  }
}
