import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/domain/task/entity.dart';
import 'package:todo/domain/task/values.dart';
import 'package:todo/domain/user/values.dart';
import 'package:todo/ui/di/tasks_provider.dart';
import 'package:todo/ui/share/task_add_field.dart';

class TestPage extends StatefulHookConsumerWidget {
  const TestPage({super.key});

  @override
  ConsumerState<TestPage> createState() => _TestPageState();
}

class _TestPageState extends ConsumerState<TestPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final userId = useState(UserId('user'));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        backgroundColor: theme.colorScheme.inversePrimary,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: _UserIdField(notifier: userId),
            ),
            const Divider(height: 1),
            Expanded(
              child: TaskList(userId: userId.value),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TaskAddField(userId: userId.value),
            ),
          ],
        ),
      ),
    );
  }
}

class _UserIdField extends HookWidget {
  const _UserIdField({
    required this.notifier,
  });

  final ValueNotifier<String> notifier;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: notifier.value);
    final apply = useCallback(() => notifier.value = controller.text.trim());
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              labelText: 'User ID',
              border: OutlineInputBorder(),
            ),
            onSubmitted: (_) => apply(),
          ),
        ),
        const SizedBox(width: 8),
        FilledButton(
          onPressed: apply,
          child: const Text('Apply'),
        ),
      ],
    );
  }
}

class TaskList extends ConsumerWidget {
  const TaskList({
    super.key,
    required this.userId,
  });

  final UserId userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskIds = ref.watch(tasksProvider(userId)).value ?? [];

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      itemCount: taskIds.length,
      separatorBuilder: (_, _) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        return TaskItem(id: taskIds[index]);
      },
    );
  }
}

class TaskItem extends HookConsumerWidget {
  const TaskItem({super.key, required this.id});

  final TaskId id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final toggling = useState(false);
    final deleting = useState(false);

    Future<void> toggleDone(Task task) async {
      if (toggling.value || deleting.value) return;
      toggling.value = true;
      try {
        final repo = await ref.read(taskRepositoryProvider.future);
        final updated = task.copyWith(
          done: !(task.done ?? false),
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
                  tooltip: (task.done ?? false) ? 'Mark not done' : 'Mark done',
                  onPressed: toggling.value || deleting.value
                      ? null
                      : () => toggleDone(task),
                  icon: Icon(
                    (task.done ?? false)
                        ? Icons.check_circle
                        : Icons.radio_button_unchecked,
                    color: (task.done ?? false)
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
