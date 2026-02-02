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
    final selectedDateTime = useState<DateTime?>(null);
    final isCompleted = useState(false);

    useEffect(() {
      final task = taskAsync.value;
      if (task == null) return null;
      titleController.text = task.title;
      descriptionController.text = task.description ?? '';
      selectedDateTime.value = task.datetime;
      isCompleted.value = task.isCompleted ?? false;
      return null;
    }, [taskAsync.value]);

    useEffect(() {
      datetimeController.text = _formatDateTime(selectedDateTime.value);
      return null;
    }, [selectedDateTime.value]);

    Future<void> saveTask(Task task) async {
      if (saving.value || deleting.value) return;
      final title = titleController.text.trim();
      if (title.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Title is required.')),
        );
        return;
      }

      saving.value = true;
      try {
        final repo = await ref.read(taskRepositoryProvider.future);
        final description = descriptionController.text.trim();
        final updated = task.copyWith(
          title: title,
          description: description.isEmpty ? null : description,
          datetime: selectedDateTime.value,
          isCompleted: isCompleted.value,
          updatedAt: DateTime.now(),
        );
        await repo.updateTask(updated);
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
        final repo = await ref.read(taskRepositoryProvider.future);
        await repo.deleteTask(task.id);
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

    Future<void> pickDateTime() async {
      final initial = selectedDateTime.value ?? DateTime.now();
      final date = await showDatePicker(
        context: context,
        initialDate: initial,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
      );
      if (date == null) return;
      final time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(initial),
      );
      if (time == null) return;
      selectedDateTime.value = DateTime(
        date.year,
        date.month,
        date.day,
        time.hour,
        time.minute,
      );
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
                          'Data',
                          style: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        _DataRow(label: 'ID', value: task.id.id),
                        _DataRow(label: 'Owner', value: task.owner.id),
                        _DataRow(label: 'Title', value: task.title),
                        _DataRow(
                          label: 'Description',
                          value: task.description ?? '-',
                        ),
                        _DataRow(
                          label: 'Datetime',
                          value: _formatDateTime(task.datetime),
                        ),
                        _DataRow(
                          label: 'Completed',
                          value: (task.isCompleted ?? false) ? 'Yes' : 'No',
                        ),
                        _DataRow(
                          label: 'Created At',
                          value: _formatDateTime(task.createdAt),
                        ),
                        _DataRow(
                          label: 'Updated At',
                          value: _formatDateTime(task.updatedAt),
                        ),
                        const Divider(height: 32),
                        Text(
                          'Edit',
                          style: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          controller: titleController,
                          textInputAction: TextInputAction.next,
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
                                    : pickDateTime,
                                child: const Text('Pick Date & Time'),
                              ),
                            ),
                            const SizedBox(width: 8),
                            OutlinedButton(
                              onPressed: saving.value || deleting.value
                                  ? null
                                  : () => selectedDateTime.value = null,
                              child: const Text('Clear'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        SwitchListTile(
                          contentPadding: EdgeInsets.zero,
                          title: const Text('Completed'),
                          value: isCompleted.value,
                          onChanged: saving.value || deleting.value
                              ? null
                              : (value) => isCompleted.value = value,
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton(
                            onPressed: saving.value || deleting.value
                                ? null
                                : () => saveTask(task),
                            child: saving.value
                                ? const SizedBox(
                                    width: 18,
                                    height: 18,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  )
                                : const Text('Save Changes'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: deleting.value ? null : () => deleteTask(task),
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

class _DataRow extends StatelessWidget {
  const _DataRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
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
