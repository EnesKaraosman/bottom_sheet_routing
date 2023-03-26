import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RouterObserver extends AutoRouterObserver {
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    super.didInitTabRoute(route, previousRoute);
    log('Route: tab initialized [${route.name}]');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    super.didChangeTabRoute(route, previousRoute);
    log('Route: tab re visited [${route.name}]');
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    final routeName = route.settings.name;
    if (routeName == null) return;
    log('Route: did push [$routeName]');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    final routeName = route.settings.name;
    if (routeName == null) return;
    log('Route: did pop [$routeName]');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    final routeName = route.settings.name;
    if (routeName == null) return;
    log('Did remove route [$routeName]');
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    final newRouteName = newRoute?.settings.name;
    final oldRouteName = oldRoute?.settings.name;
    if (oldRouteName == null || newRouteName == null) return;
    log('Old route [$oldRouteName] replaced with new route [$newRouteName]');
  }
}
