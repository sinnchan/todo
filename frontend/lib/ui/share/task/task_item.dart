import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/domain/task/entity.dart';
import 'package:todo/domain/task/values.dart';
import 'package:todo/ui/di/tasks_provider.dart';

class TaskItem extends HookConsumerWidget {
  const TaskItem({super.key, required this.id});

  final TaskId id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final toggling = useState(false);
    final deleting = useState(false);

    Future<void> toggleCompleted(Task task) async {
      if (toggling.value || deleting.value) return;
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

    Future<void> deleteTask(Task task) async {
      if (toggling.value || deleting.value) return;
      deleting.value = true;
      try {
        final repo = await ref.read(taskRepositoryProvider.future);
        await repo.deleteTask(task.id);
      } finally {
        deleting.value = false;
      }
    }

    return ref
        .watch(taskProvider(id))
        .when(
          data: (task) {
            return Card(
              child: ListTile(
                title: Text(task.title ?? 'Untitled'),
                leading: IconButton(
                  onPressed: toggling.value || deleting.value
                      ? null
                      : () => toggleCompleted(task),
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
                  tooltip: 'Delete',
                  onPressed: toggling.value || deleting.value
                      ? null
                      : () => deleteTask(task),
                  icon: const Icon(Icons.delete),
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
