import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo/ui/route/router.dart';
import 'package:todo/ui/share/task_add_field.dart';
import 'package:todo/ui/share/task/task_list.dart';
import 'package:todo/ui/share/use_signed_user_id.dart';

class TodoListPage extends HookConsumerWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
        actions: [
          IconButton(
            onPressed: () => SettingsRoute().push(context),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SafeArea(
        child: SignedUserIdBuilder(
          builder: (context, userId) {
            return Column(
              children: [
                Expanded(
                  child: TaskList(
                    userId: userId,
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TaskAddField(userId: userId),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
