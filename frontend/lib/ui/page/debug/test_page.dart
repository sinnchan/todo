import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/ui/share/task/task_add_field.dart';
import 'package:todo/ui/share/task/task_list.dart';

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
