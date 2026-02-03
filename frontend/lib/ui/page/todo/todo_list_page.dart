import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/ui/di/settings_providers.dart';
import 'package:todo/ui/di/tasks_provider.dart';
import 'package:todo/ui/route/router.dart';
import 'package:todo/ui/share/task/task_add_field.dart';
import 'package:todo/ui/share/task/task_list.dart';
import 'package:todo/ui/share/task/task_sort_sheet.dart';
import 'package:todo/ui/share/use_signed_user_id.dart';

class TodoListPage extends HookConsumerWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SignedUserIdBuilder(
      builder: (context, userId) {
        final settings = ref.watch(userSettingsProvider(userId));
        return Scaffold(
          appBar: AppBar(
            title: const Text('Todo'),
            actions: [
              settings.when(
                data: (_) => IconButton(
                  onPressed: () => _showSortSheet(context),
                  icon: const Icon(Icons.sort),
                ),
                loading: () => IconButton(
                  onPressed: null,
                  icon: const Icon(Icons.sort),
                ),
                error: (_, _) => IconButton(
                  onPressed: null,
                  icon: const Icon(Icons.sort),
                ),
              ),
              IconButton(
                onPressed: () async {
                  final service = await ref.read(taskServiceProvider.future);
                  await service.fetchTasks(userId: userId);
                },
                icon: Icon(Icons.refresh),
              ),
              IconButton(
                onPressed: () => SettingsRoute().push(context),
                icon: Icon(Icons.settings),
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: TaskList(
                    userId: userId,
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TaskAddField(userId: userId),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _showSortSheet(BuildContext context) async {
    await showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      builder: (context) {
        return const SortSheet();
      },
    );
  }
}
