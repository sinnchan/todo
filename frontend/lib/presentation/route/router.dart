import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/presentation/page/settings/settings_page.dart';
import 'package:todo/presentation/page/todo/todo_detail_page.dart';
import 'package:todo/presentation/page/todo/todo_list_page.dart';
import 'package:todo/domain/task/task_values.dart';

part 'router.g.dart';

@TypedGoRoute<TopRoute>(path: '/')
@immutable
class TopRoute extends GoRouteData with $TopRoute {
  const TopRoute();

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    return TodoListRoute().location;
  }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SizedBox.shrink();
  }
}

@TypedGoRoute<TodoListRoute>(path: '/todo')
@immutable
class TodoListRoute extends GoRouteData with $TodoListRoute {
  const TodoListRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TodoListPage();
  }
}

@TypedGoRoute<TodoDetailRoute>(path: '/todo/:id')
@immutable
class TodoDetailRoute extends GoRouteData with $TodoDetailRoute {
  const TodoDetailRoute({required this.id});

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TodoDetailPage(taskId: TaskId(id));
  }
}

@TypedGoRoute<SettingsRoute>(path: '/settings')
@immutable
class SettingsRoute extends GoRouteData with $SettingsRoute {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingsPage();
  }
}
