import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/ui/di/tasks_provider.dart';
import 'package:todo/ui/route/router.dart';

class TaskItem extends HookConsumerWidget {
  const TaskItem({super.key, required this.id});

  final TaskId id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final toggling = useState(false);

    Future<void> toggleCompleted(Task task) async {
      if (toggling.value) return;
      toggling.value = true;
      try {
        final repo = await ref.read(taskRepositoryProvider.future);
        final updated = task.copyWith(
          isCompleted: !(task.isCompleted ?? false),
          updatedAt: DateTime.now(),
        );
        await repo.updateTask(updated);
      } finally {
        toggling.value = false;
      }
    }

    return ref
        .watch(taskProvider(id))
        .when(
          data: (task) {
            return Card(
              child: ListTile(
                title: Text(task.title),
                leading: IconButton(
                  onPressed: toggling.value ? null : () => toggleCompleted(task),
                  icon: Icon(
                    (task.isCompleted ?? false)
                        ? Icons.check_circle
                        : Icons.radio_button_unchecked,
                    color: (task.isCompleted ?? false)
                        ? theme.colorScheme.primary
                        : theme.colorScheme.outline,
                  ),
                ),
                trailing: IconButton(
                  tooltip: 'Details',
                  onPressed: () => TodoDetailRoute(id: task.id.id).push(context),
                  icon: const Icon(Icons.more_horiz),
                ),
              ),
            );
          },
          loading: () => ListTile(
            title: Text('Loading $id'),
            subtitle: const Text('Fetching task...'),
          ),
          error: (err, _) => ListTile(
            title: Text('Error $id'),
            subtitle: Text(err.toString()),
          ),
        );
  }
}
