import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/domain/user/values.dart';
import 'package:todo/ui/di/tasks_provider.dart';
import 'package:todo/ui/share/task/task_item.dart';

class TaskList extends ConsumerWidget {
  const TaskList({
    super.key,
    required this.userId,
    this.padding = const EdgeInsets.fromLTRB(16, 12, 16, 12),
  });

  final UserId userId;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskIds = ref.watch(tasksProvider(userId)).value ?? [];

    return ListView.separated(
      padding: padding,
      itemCount: taskIds.length,
      separatorBuilder: (_, _) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        return TaskItem(id: taskIds[index]);
      },
    );
  }
}
