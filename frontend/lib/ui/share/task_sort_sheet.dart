import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/domain/settings/settings_values.dart';
import 'package:todo/domain/settings/user_settings.dart';
import 'package:todo/ui/di/settings_providers.dart';
import 'package:todo/ui/share/use_signed_user_id.dart';

class SortSheet extends HookConsumerWidget {
  const SortSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (useSignedUserId()) {
      SignedUserIdSignedIn(:final userId) =>
        ref
            .watch(userSettingsProvider(userId))
            .when(
              data: (settings) => SortSheetBody(settings: settings),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(
                child: Text('Failed to load settings: $error'),
              ),
            ),
      SignedUserIdLoading() => const Center(
        child: CircularProgressIndicator(),
      ),
      SignedUserIdError(:final error) => Center(
        child: Text('Failed to load user: $error'),
      ),
    };
  }
}

class SortSheetBody extends HookConsumerWidget {
  const SortSheetBody({super.key, required this.settings});

  final UserSettings settings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final selectedKey = useState(settings.sortKey);
    final selectedDirection = useState(settings.sortDirection);

    useEffect(() {
      selectedKey.value = settings.sortKey;
      selectedDirection.value = settings.sortDirection;
      return null;
    }, [settings.sortKey, settings.sortDirection]);

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
      shrinkWrap: true,
      children: [
        Text('Sort', style: theme.textTheme.titleMedium),
        const SizedBox(height: 8),
        for (final key in SortKey.values)
          ListTile(
            leading: Icon(
              selectedKey.value == key
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
            ),
            title: Text(_sortKeyLabel(key)),
            onTap: () async {
              selectedKey.value = key;
              await _updateSettings(
                context,
                ref,
                settings.copyWith(
                  sortKey: key,
                  sortDirection: selectedDirection.value,
                ),
              );
            },
          ),
        const Divider(height: 32),
        Text('Direction', style: theme.textTheme.titleMedium),
        const SizedBox(height: 8),
        for (final direction in SortDirection.values)
          ListTile(
            leading: Icon(
              selectedDirection.value == direction
                  ? Icons.radio_button_checked
                  : Icons.radio_button_unchecked,
            ),
            title: Text(_directionLabel(direction)),
            onTap: () async {
              selectedDirection.value = direction;
              await _updateSettings(
                context,
                ref,
                settings.copyWith(
                  sortKey: selectedKey.value,
                  sortDirection: direction,
                ),
              );
            },
          ),
      ],
    );
  }

  Future<void> _updateSettings(
    BuildContext context,
    WidgetRef ref,
    UserSettings settings,
  ) async {
    try {
      final repo = await ref.read(userSettingsRepositoryProvider.future);
      await repo.updateSettings(settings);
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to update settings: $e')),
      );
    }
  }
}

String _sortKeyLabel(SortKey key) {
  switch (key) {
    case SortKey.createdAt:
      return 'Created At';
    case SortKey.updatedAt:
      return 'Updated At';
    case SortKey.dueAt:
      return 'Due At';
    case SortKey.title:
      return 'Title';
  }
}

String _directionLabel(SortDirection direction) {
  switch (direction) {
    case SortDirection.asc:
      return 'Ascending';
    case SortDirection.desc:
      return 'Descending';
  }
}
