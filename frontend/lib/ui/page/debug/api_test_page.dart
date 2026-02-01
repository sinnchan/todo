import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:todo/infra/api/amplify/gen/models/Task.dart';

class AmplifyTestPage extends StatefulWidget {
  const AmplifyTestPage({super.key});

  @override
  State<AmplifyTestPage> createState() => _AmplifyTestPageState();
}

class _AmplifyTestPageState extends State<AmplifyTestPage> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  List<Task> _tasks = const [];
  bool _loading = false;
  String? _status;
  String? _error;

  @override
  void initState() {
    super.initState();
    _refreshTasks();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _refreshTasks() async {
    await _run('Fetching tasks...', () async {
      final tasks = await _fetchTasks();
      setState(() {
        _tasks = tasks;
      });
    });
  }

  Future<void> _createTask() async {
    final title = _titleController.text.trim();
    final description = _descriptionController.text.trim();
    if (title.isEmpty) {
      setState(() {
        _error = 'title is required.';
        _status = null;
      });
      return;
    }

    await _run('Creating task...', () async {
      final now = TemporalDateTime.now();
      final task = Task(
        title: title,
        description: description.isEmpty ? null : description,
        datetime: now,
        done: false,
      );

      final request = ModelMutations.create(task);
      final response = await Amplify.API.mutate(request: request).response;

      if (response.errors.isNotEmpty) {
        throw Exception(response.errors.map((e) => e.message).join('\n'));
      }

      _titleController.clear();
      _descriptionController.clear();

      final tasks = await _fetchTasks();
      if (!mounted) return;
      setState(() {
        _tasks = tasks;
      });
    });
  }

  Future<void> _toggleDone(Task task) async {
    await _run('Updating task...', () async {
      final updated = task.copyWith(done: !task.done);
      final request = ModelMutations.update(updated);
      final response = await Amplify.API.mutate(request: request).response;

      if (response.errors.isNotEmpty) {
        throw Exception(response.errors.map((e) => e.message).join('\n'));
      }

      final tasks = await _fetchTasks();
      if (!mounted) return;
      setState(() {
        _tasks = tasks;
      });
    });
  }

  Future<void> _deleteTask(Task task) async {
    await _run('Deleting task...', () async {
      final request = ModelMutations.delete(task);
      final response = await Amplify.API.mutate(request: request).response;

      if (response.errors.isNotEmpty) {
        throw Exception(response.errors.map((e) => e.message).join('\n'));
      }

      final tasks = await _fetchTasks();
      if (!mounted) return;
      setState(() {
        _tasks = tasks;
      });
    });
  }

  Future<List<Task>> _fetchTasks() async {
    final request = ModelQueries.list(Task.classType);
    final response = await Amplify.API.query(request: request).response;

    if (response.errors.isNotEmpty) {
      throw Exception(response.errors.map((e) => e.message).join('\n'));
    }

    final items = response.data?.items ?? const [];
    return items.whereType<Task>().toList();
  }

  Future<void> _run(String status, Future<void> Function() action) async {
    setState(() {
      _loading = true;
      _status = status;
      _error = null;
    });

    try {
      await action();
      if (!mounted) return;
      setState(() {
        _status = 'OK: $status';
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _error = e.toString();
        _status = null;
      });
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Amplify API Test'),
        backgroundColor: theme.colorScheme.inversePrimary,
        actions: [
          IconButton(
            tooltip: 'Logout',
            onPressed: _loading ? null : () => Amplify.Auth.signOut(),
            icon: const Icon(Icons.logout),
          ),
          IconButton(
            tooltip: 'Refresh',
            onPressed: _loading ? null : _refreshTasks,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      labelText: 'Title',
                      border: OutlineInputBorder(),
                    ),
                    textInputAction: TextInputAction.next,
                    enabled: !_loading,
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(
                      labelText: 'Description (optional)',
                      border: OutlineInputBorder(),
                    ),
                    enabled: !_loading,
                  ),
                  const SizedBox(height: 12),
                  FilledButton(
                    onPressed: _loading ? null : _createTask,
                    child: const Text('Create Task'),
                  ),
                  const SizedBox(height: 8),
                  if (_status != null)
                    Text(
                      _status!,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  if (_error != null)
                    Text(
                      _error!,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.error,
                      ),
                    ),
                ],
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: _tasks.isEmpty
                  ? Center(
                      child: Text(
                        _loading ? 'Loading...' : 'No tasks found',
                        style: theme.textTheme.bodyMedium,
                      ),
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      itemCount: _tasks.length,
                      separatorBuilder: (_, _) => const SizedBox(height: 8),
                      itemBuilder: (context, index) {
                        final task = _tasks[index];
                        return Card(
                          child: ListTile(
                            title: Text(task.title),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (task.description != null &&
                                    task.description!.isNotEmpty)
                                  Text(task.description!),
                                Text(
                                  'datetime: ${task.datetime.format()}',
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                            leading: Icon(
                              task.done
                                  ? Icons.check_circle
                                  : Icons.radio_button_unchecked,
                              color: task.done
                                  ? theme.colorScheme.primary
                                  : theme.colorScheme.outline,
                            ),
                            trailing: Wrap(
                              spacing: 8,
                              children: [
                                IconButton(
                                  tooltip: task.done
                                      ? 'Mark not done'
                                      : 'Mark done',
                                  onPressed: _loading
                                      ? null
                                      : () => _toggleDone(task),
                                  icon: Icon(
                                    task.done ? Icons.undo : Icons.check,
                                  ),
                                ),
                                IconButton(
                                  tooltip: 'Delete',
                                  onPressed: _loading
                                      ? null
                                      : () => _deleteTask(task),
                                  icon: const Icon(Icons.delete),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
