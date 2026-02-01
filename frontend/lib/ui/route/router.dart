import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
