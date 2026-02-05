import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/presentation/di/tasks_provider.dart';

class TaskAddField extends HookConsumerWidget {
  const TaskAddField({super.key, required this.userId});

  final UserId userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    final submitting = useState(false);

    return TextField(
      controller: controller,
      focusNode: focusNode,
      textInputAction: TextInputAction.done,
      maxLines: 1,
      enabled: !submitting.value,
      onSubmitted: (_) => useSubmit(ref, controller, submitting),
      decoration: const InputDecoration(
        hintText: 'Add a new task',
        border: OutlineInputBorder(),
      ),
    );
  }

  Future<void> useSubmit(
    WidgetRef ref,
    TextEditingController controller,
    ValueNotifier<bool> submitting,
  ) async {
    final title = controller.text.trim();
    if (title.isEmpty || submitting.value) {
      return;
    }
    submitting.value = true;
    try {
      final service = await ref.read(taskServiceProvider.future);
      final now = DateTime.now();
      final task = Task(
        id: TaskId(uuid()),
        owner: userId,
        title: title,
        description: null,
        datetime: now,
        isCompleted: false,
        createdAt: now,
        updatedAt: now,
      );

      await service.createTask(userId: userId, task: task);
      if (!ref.context.mounted) return;
      controller.clear();
    } catch (e) {
      if (!ref.context.mounted) return;
      ScaffoldMessenger.of(ref.context).showSnackBar(
        SnackBar(content: Text('Failed to add task: $e')),
      );
    } finally {
      submitting.value = false;
    }
  }
}
