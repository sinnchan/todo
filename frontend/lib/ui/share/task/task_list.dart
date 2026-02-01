import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/domain/user/user_values.dart';
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
    final tasksAsync = ref.watch(tasksProvider(userId));
    final state = tasksAsync.valueOrNull ?? TasksState.empty();
    final taskIds = state.ids;
    final isFetching = state.isFetching;

    if (tasksAsync.isLoading && taskIds.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification.metrics.extentAfter < 240) {
          ref.read(tasksProvider(userId).notifier).fetchNextPage();
        }
        return false;
      },
      child: ListView.separated(
        key: PageStorageKey('task_list_${userId.id}'),
        padding: padding,
        itemCount: taskIds.length + (isFetching ? 1 : 0),
        separatorBuilder: (_, _) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          if (index >= taskIds.length) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
            );
          }
          return TaskItem(id: taskIds[index]);
        },
      ),
    );
  }
}
