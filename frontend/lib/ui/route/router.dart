import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/ui/page/settings/settings_page.dart';
import 'package:todo/ui/page/todo/todo_list_page.dart';

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

@TypedGoRoute<SettingsRoute>(path: '/settings')
@immutable
class SettingsRoute extends GoRouteData with $SettingsRoute {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingsPage();
  }
}
