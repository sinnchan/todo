// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$topPageRoute, $settingsRoute];

RouteBase get $topPageRoute =>
    GoRouteData.$route(path: '/', factory: $TopPageRoute._fromState);

mixin $TopPageRoute on GoRouteData {
  static TopPageRoute _fromState(GoRouterState state) => TopPageRoute();

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

RouteBase get $settingsRoute => GoRouteData.$route(
  path: '/:userId/settings',
  factory: $SettingsRoute._fromState,
);

mixin $SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) =>
      SettingsRoute(userId: state.pathParameters['userId']!);

  SettingsRoute get _self => this as SettingsRoute;

  @override
  String get location =>
      GoRouteData.$location('/${Uri.encodeComponent(_self.userId)}/settings');

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
