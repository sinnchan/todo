import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/domain/settings/user_settings.dart';
import 'package:todo/domain/settings/values.dart';
import 'package:todo/domain/user/values.dart';
import 'package:todo/ui/di/settings_providers.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key, required this.userId});

  final UserId userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(userSettingsProvider(userId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: settings.when(
        data: (value) => _SettingsBody(
          settings: value,
          onChanged: (updated) async {
            final repo = await ref.read(userSettingsRepositoryProvider.future);
            await repo.updateSettings(updated);
          },
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, _) => Center(
          child: Text(error.toString()),
        ),
      ),
    );
  }
}

class _SettingsBody extends StatelessWidget {
  const _SettingsBody({
    required this.settings,
    required this.onChanged,
  });

  final UserSettings settings;
  final Future<void> Function(UserSettings settings) onChanged;

  @override
  Widget build(BuildContext context) {
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
          onChanged: (value) {
            if (value == null) return;
            onChanged(settings.copyWith(sortKey: value));
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
          onChanged: (value) {
            if (value == null) return;
            onChanged(settings.copyWith(sortDirection: value));
          },
        ),
        const SizedBox(height: 12),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Show completed'),
          value: settings.showCompleted,
          onChanged: (value) {
            onChanged(settings.copyWith(showCompleted: value));
          },
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Enable push notifications'),
          value: settings.enablePushNotification,
          onChanged: (value) {
            onChanged(settings.copyWith(enablePushNotification: value));
          },
        ),
      ],
    );
  }
}
