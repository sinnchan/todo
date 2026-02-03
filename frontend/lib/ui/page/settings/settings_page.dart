import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/app/service/settings_service.dart';
import 'package:todo/domain/settings/user_settings.dart';
import 'package:todo/domain/settings/settings_values.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/ui/di/settings_providers.dart';
import 'package:todo/ui/share/use_signed_user_id.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        actions: [
          IconButton(
            onPressed: () {
              Amplify.Auth.signOut();
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: SignedUserIdBuilder(
        builder: (context, userId) {
          return ref
              .watch(userSettingsProvider(userId))
              .when(
                data: (value) => _SettingsBody(
                  userId: userId,
                  settings: value,
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: (error, _) => Center(
                  child: Text(error.toString()),
                ),
              );
        },
      ),
    );
  }
}

class _SettingsBody extends ConsumerWidget {
  const _SettingsBody({
    required this.userId,
    required this.settings,
  });

  final UserId userId;
  final UserSettings settings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        DropdownButtonFormField(
          initialValue: settings.sortKey,
          decoration: const InputDecoration(
            labelText: 'Sort key',
            border: OutlineInputBorder(),
          ),
          items: SortKey.values
              .map((i) => DropdownMenuItem(value: i, child: Text(i.name)))
              .toList(),
          onChanged: (value) async {
            if (value == null) return;
            await _runSettingsUpdate(
              context,
              ref,
              (service) => service.updateSort(userId: userId, key: value),
            );
          },
        ),
        const SizedBox(height: 12),
        DropdownButtonFormField(
          initialValue: settings.sortDirection,
          decoration: const InputDecoration(
            labelText: 'Sort direction',
            border: OutlineInputBorder(),
          ),
          items: SortDirection.values
              .map((i) => DropdownMenuItem(value: i, child: Text(i.name)))
              .toList(),
          onChanged: (value) async {
            if (value == null) return;
            await _runSettingsUpdate(
              context,
              ref,
              (service) =>
                  service.updateSort(userId: userId, direction: value),
            );
          },
        ),
        const SizedBox(height: 12),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Show completed'),
          value: settings.showCompleted,
          onChanged: (value) async {
            await _runSettingsUpdate(
              context,
              ref,
              (service) => service.updateShowCompleted(
                userId: userId,
                showCompleted: value,
              ),
            );
          },
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Enable push notifications'),
          value: settings.enablePushNotification,
          onChanged: (value) async {
            await _runSettingsUpdate(
              context,
              ref,
              (service) => service.updatePushNotification(
                userId: userId,
                enablePushNotification: value,
              ),
            );
          },
        ),
      ],
    );
  }

  Future<void> _runSettingsUpdate(
    BuildContext context,
    WidgetRef ref,
    Future<void> Function(SettingsService service) action,
  ) async {
    try {
      final service = await ref.read(settingsServiceProvider.future);
      await action(service);
    } catch (error) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.toString())),
      );
    }
  }
}
