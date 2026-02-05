import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/presentation/di/router_provider.dart';

class Application extends ConsumerWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Authenticator(
      child: MaterialApp.router(
        title: 'Flutter Demo',
        builder: Authenticator.builder(),
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        ),
        routerConfig: ref.watch(routerProvider),
      ),
    );
  }
}
