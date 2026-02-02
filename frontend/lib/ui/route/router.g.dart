// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $topRoute,
  $todoListRoute,
  $todoDetailRoute,
  $settingsRoute,
];

RouteBase get $topRoute =>
    GoRouteData.$route(path: '/', factory: $TopRoute._fromState);

mixin $TopRoute on GoRouteData {
  static TopRoute _fromState(GoRouterState state) => const TopRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $todoListRoute =>
    GoRouteData.$route(path: '/todo', factory: $TodoListRoute._fromState);

mixin $TodoListRoute on GoRouteData {
  static TodoListRoute _fromState(GoRouterState state) => const TodoListRoute();

  @override
  String get location => GoRouteData.$location('/todo');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $todoDetailRoute =>
    GoRouteData.$route(path: '/todo/:id', factory: $TodoDetailRoute._fromState);

mixin $TodoDetailRoute on GoRouteData {
  static TodoDetailRoute _fromState(GoRouterState state) =>
      TodoDetailRoute(id: state.pathParameters['id']!);

  TodoDetailRoute get _self => this as TodoDetailRoute;

  @override
  String get location =>
      GoRouteData.$location('/todo/${Uri.encodeComponent(_self.id)}');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $settingsRoute =>
    GoRouteData.$route(path: '/settings', factory: $SettingsRoute._fromState);

mixin $SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  @override
  String get location => GoRouteData.$location('/settings');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
