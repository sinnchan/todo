import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/ui/di/tasks_provider.dart';
import 'package:todo/ui/route/router.dart';

class TodoDetailPage extends HookConsumerWidget {
  const TodoDetailPage({super.key, required this.taskId});

  final TaskId taskId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskAsync = ref.watch(taskProvider(taskId));
    final theme = Theme.of(context);
    final saving = useState(false);
    final deleting = useState(false);

    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final datetimeController = useTextEditingController();

    useEffect(() {
      final task = taskAsync.value;
      if (task == null) return null;
      titleController.text = task.title;
      descriptionController.text = task.description ?? '';
      return null;
    }, [taskAsync.value]);

    useEffect(() {
      final task = taskAsync.value;
      if (task == null) return null;
      datetimeController.text = _formatDateTime(task.datetime);
      return null;
    }, [taskAsync.value]);

    Future<void> updateTitle(Task task, String value) async {
      if (saving.value || deleting.value) return;
      final title = value.trim();
      if (title.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Title is required.')),
        );
        return;
      }

      saving.value = true;
      try {
        final service = await ref.read(taskServiceProvider.future);
        final updated = task.copyWith(
          title: title,
          updatedAt: DateTime.now(),
        );
        await service.updateTask(userId: task.owner, task: updated);
      } catch (e) {
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to update task: $e')),
        );
      } finally {
        saving.value = false;
      }
    }

    Future<void> updateDescription(Task task, String value) async {
      if (saving.value || deleting.value) return;
      saving.value = true;
      try {
        final service = await ref.read(taskServiceProvider.future);
        final trimmed = value.trim();
        final updated = task.copyWith(
          description: trimmed.isEmpty ? null : trimmed,
          updatedAt: DateTime.now(),
        );
        await service.updateTask(userId: task.owner, task: updated);
      } catch (e) {
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to update task: $e')),
        );
      } finally {
        saving.value = false;
      }
    }

    Future<void> updateDateTime(Task task, DateTime? value) async {
      if (saving.value || deleting.value) return;
      saving.value = true;
      try {
        final service = await ref.read(taskServiceProvider.future);
        final updated = task.copyWith(
          datetime: value,
          updatedAt: DateTime.now(),
        );
        await service.updateTask(userId: task.owner, task: updated);
      } catch (e) {
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to update task: $e')),
        );
      } finally {
        saving.value = false;
      }
    }

    Future<void> updateCompleted(Task task, bool value) async {
      if (saving.value || deleting.value) return;
      saving.value = true;
      try {
        final service = await ref.read(taskServiceProvider.future);
        final updated = task.copyWith(
          isCompleted: value,
          updatedAt: DateTime.now(),
        );
        await service.updateTask(userId: task.owner, task: updated);
      } catch (e) {
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to update task: $e')),
        );
      } finally {
        saving.value = false;
      }
    }

    Future<void> deleteTask(Task task) async {
      if (saving.value || deleting.value) return;
      deleting.value = true;
      try {
        final service = await ref.read(taskServiceProvider.future);
        await service.deleteTask(userId: task.owner, id: task.id);
        if (!context.mounted) return;
        TodoListRoute().go(context);
      } catch (e) {
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to delete task: $e')),
        );
      } finally {
        deleting.value = false;
      }
    }

    Future<void> pickDateTime(Task task) async {
      final initial = task.datetime ?? DateTime.now();
      final date = await showDatePicker(
        context: context,
        initialDate: initial,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
      );
      if (date == null) return;
      if (!context.mounted) return;
      final time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(initial),
      );
      if (time == null) return;
      final selected = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
      await updateDateTime(task, selected);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Detail'),
      ),
      body: SafeArea(
        child: taskAsync.when(
          data: (task) {
            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Edit',
                          style: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          controller: titleController,
                          textInputAction: TextInputAction.next,
                          onSubmitted: (value) => updateTitle(task, value),
                          decoration: const InputDecoration(
                            labelText: 'Title',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          controller: descriptionController,
                          minLines: 3,
                          maxLines: 6,
                          onSubmitted: (value) =>
                              updateDescription(task, value),
                          decoration: const InputDecoration(
                            labelText: 'Description',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          controller: datetimeController,
                          readOnly: true,
                          decoration: const InputDecoration(
                            labelText: 'Datetime',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                onPressed: saving.value || deleting.value
                                    ? null
                                    : () => pickDateTime(task),
                                child: const Text('Pick Date & Time'),
                              ),
                            ),
                            const SizedBox(width: 8),
                            OutlinedButton(
                              onPressed: saving.value || deleting.value
                                  ? null
                                  : () => updateDateTime(task, null),
                              child: const Text('Clear'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        SwitchListTile(
                          contentPadding: EdgeInsets.zero,
                          title: const Text('Completed'),
                          value: task.isCompleted ?? false,
                          onChanged: saving.value || deleting.value
                              ? null
                              : (value) => updateCompleted(task, value),
                        ),
                        const SizedBox(height: 12),
                        const Divider(height: 32),
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton(
                            onPressed: deleting.value
                                ? null
                                : () => deleteTask(task),
                            style: FilledButton.styleFrom(
                              backgroundColor: theme.colorScheme.error,
                              foregroundColor: theme.colorScheme.onError,
                            ),
                            child: deleting.value
                                ? const SizedBox(
                                    width: 18,
                                    height: 18,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  )
                                : const Text('Delete Todo'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, _) => Center(
            child: Text('Failed to load task: $err'),
          ),
        ),
      ),
    );
  }
}

String _formatDateTime(DateTime? dateTime) {
  if (dateTime == null) return '-';
  final local = dateTime.toLocal();
  final y = local.year.toString().padLeft(4, '0');
  final m = local.month.toString().padLeft(2, '0');
  final d = local.day.toString().padLeft(2, '0');
  final h = local.hour.toString().padLeft(2, '0');
  final min = local.minute.toString().padLeft(2, '0');
  return '$y-$m-$d $h:$min';
}
