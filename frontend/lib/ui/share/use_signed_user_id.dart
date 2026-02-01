import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/app/share/logger.dart';
import 'package:todo/domain/user/user_values.dart';

part 'use_signed_user_id.freezed.dart';

@freezed
sealed class SignedUserId with _$SignedUserId {
  const factory SignedUserId.signedIn(UserId userId) = SignedUserIdSignedIn;
  const factory SignedUserId.loading() = SignedUserIdLoading;
  const factory SignedUserId.error(Object error) = SignedUserIdError;
}

SignedUserId useSignedUserId() {
  final future = useMemoized(() => Amplify.Auth.getCurrentUser());
  final snapshot = useFuture(future);
  switch (snapshot.connectionState) {
    case ConnectionState.none:
    case ConnectionState.waiting:
      return const SignedUserId.loading();
    case ConnectionState.active:
    case ConnectionState.done:
      if (snapshot.hasError) {
        final error = snapshot.error ?? StateError('Failed to load user');
        logger.e('failed to load user', error);
        return SignedUserId.error(error);
      }
      final user = snapshot.data;
      if (user == null) {
        logger.e('failed to load user');
        return SignedUserId.error(StateError('User not found'));
      }

      logger.v('user login status: ok');
      return SignedUserId.signedIn(UserId(user.userId));
  }
}

class SignedUserIdBuilder extends HookWidget {
  const SignedUserIdBuilder({super.key, required this.builder});

  final Widget Function(BuildContext, UserId) builder;

  @override
  Widget build(BuildContext context) {
    return switch (useSignedUserId()) {
      SignedUserIdSignedIn(:final userId) => builder(context, userId),
      SignedUserIdLoading() => const Center(
        child: CircularProgressIndicator(),
      ),
      SignedUserIdError(:final error) => Center(
        child: Column(
          children: [
            Text('Failed to load user: $error'),
            TextButton(
              onPressed: Amplify.Auth.signOut,
              child: Text('sign out'),
            ),
          ],
        ),
      ),
    };
  }
}
