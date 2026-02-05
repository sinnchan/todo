import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/presentation/di/tasks_provider.dart';
import 'package:todo/presentation/route/router.dart';

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
        final service = await ref.read(taskServiceProvider.future);
        final updated = task.copyWith(
          isCompleted: !(task.isCompleted ?? false),
          updatedAt: DateTime.now(),
        );
        await service.updateTask(userId: task.owner, task: updated);
      } finally {
        toggling.value = false;
      }
    }

    final content = ref
        .watch(taskProvider(id))
        .when(
          data: (task) {
            return Card(
              key: ValueKey('task_${task.id.id}'),
              child: ListTile(
                title: Text(task.title),
                leading: IconButton(
                  onPressed: toggling.value
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
                  tooltip: 'Details',
                  onPressed: () =>
                      TodoDetailRoute(id: task.id.id).push(context),
                  icon: const Icon(Icons.more_horiz),
                ),
              ),
            );
          },
          loading: () => _TaskItemShimmer(key: ValueKey('loading_$id')),
          error: (err, _) => ListTile(
            key: ValueKey('error_$id'),
            title: Text('Error $id'),
            subtitle: Text(err.toString()),
          ),
        );

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      switchInCurve: Curves.easeOutCubic,
      switchOutCurve: Curves.easeInCubic,
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: SizeTransition(
            sizeFactor: animation,
            axisAlignment: -1,
            child: child,
          ),
        );
      },
      child: content,
    );
  }
}

class _TaskItemShimmer extends StatelessWidget {
  const _TaskItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final baseColor = theme.colorScheme.surfaceContainerHighest;
    final highlightColor = theme.colorScheme.surface;

    return Card(
      child: Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: ListTile(
          leading: _ShimmerDot(size: 24, color: baseColor),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ShimmerBar(height: 10, width: 140, color: baseColor),
            ],
          ),
          trailing: _ShimmerDot(size: 20, color: baseColor),
        ),
      ),
    );
  }
}

class _ShimmerBar extends StatelessWidget {
  const _ShimmerBar({
    required this.height,
    required this.width,
    required this.color,
  });

  final double height;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}

class _ShimmerDot extends StatelessWidget {
  const _ShimmerDot({required this.size, required this.color});

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
