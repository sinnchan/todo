import 'package:flutter/material.dart';
import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:animated_list_plus/transitions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/domain/task/task_values.dart';
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
    final tasks = ref.watch(tasksProvider(userId));

    if (tasks.hasError) {
      return Center(
        child: Text(
          'Failed to load tasks: ${tasks.error}',
        ),
      );
    }

    if (tasks.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return CustomScrollView(
      key: PageStorageKey('task_list_${userId.id}'),
      slivers: [
        SliverPadding(
          padding: padding,
          sliver: SliverImplicitlyAnimatedList<TaskId>(
            items: tasks.value ?? [],
            areItemsTheSame: (a, b) => a.id == b.id,
            itemBuilder: (context, animation, id, index) {
              return SizeFadeTransition(
                animation: animation,
                curve: Curves.easeOutCubic,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TaskItem(
                    key: ValueKey(id.id),
                    id: id,
                  ),
                ),
              );
            },
            removeItemBuilder: (context, animation, id) {
              return SizeFadeTransition(
                animation: animation,
                curve: Curves.easeOutCubic,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TaskItem(
                    key: ValueKey(id.id),
                    id: id,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
