import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/domain/user/values.dart';
import 'package:todo/ui/page/settings/settings_page.dart';
import 'package:todo/ui/page/top.dart';

part 'router.g.dart';

@TypedGoRoute<TopPageRoute>(path: '/')
@immutable
class TopPageRoute extends GoRouteData with $TopPageRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TopPage();
  }
}

@TypedGoRoute<SettingsRoute>(path: '/:userId/settings')
@immutable
class SettingsRoute extends GoRouteData with $SettingsRoute {
  const SettingsRoute({required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingsPage(userId: UserId(userId));
  }
}
