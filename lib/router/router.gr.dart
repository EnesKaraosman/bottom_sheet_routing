// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../initial.dart' as _i1;
import '../sheet_flow/sheet_root.dart' as _i3;
import '../sheet_flow/sheet_second.dart' as _i4;
import 'router.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    InitialRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.InitialScreen(),
      );
    },
    BottomSheetRouter.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
        customRouteBuilder: _i2.modalSheetBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SheetRootRoute.name: (routeData) {
      final args = routeData.argsAs<SheetRootRouteArgs>(
          orElse: () => const SheetRootRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SheetRoot(
          key: args.key,
          onNext: args.onNext,
        ),
      );
    },
    SheetSecondRoute.name: (routeData) {
      final args = routeData.argsAs<SheetSecondRouteArgs>(
          orElse: () => const SheetSecondRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.SheetSecond(
          key: args.key,
          onNext: args.onNext,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          InitialRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          BottomSheetRouter.name,
          path: '/empty-router-page',
          children: [
            _i5.RouteConfig(
              SheetRootRoute.name,
              path: '',
              parent: BottomSheetRouter.name,
            ),
            _i5.RouteConfig(
              SheetSecondRoute.name,
              path: 'sheet-second',
              parent: BottomSheetRouter.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.InitialScreen]
class InitialRoute extends _i5.PageRouteInfo<void> {
  const InitialRoute()
      : super(
          InitialRoute.name,
          path: '/',
        );

  static const String name = 'InitialRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class BottomSheetRouter extends _i5.PageRouteInfo<void> {
  const BottomSheetRouter({List<_i5.PageRouteInfo>? children})
      : super(
          BottomSheetRouter.name,
          path: '/empty-router-page',
          initialChildren: children,
        );

  static const String name = 'BottomSheetRouter';
}

/// generated route for
/// [_i3.SheetRoot]
class SheetRootRoute extends _i5.PageRouteInfo<SheetRootRouteArgs> {
  SheetRootRoute({
    _i6.Key? key,
    void Function()? onNext,
  }) : super(
          SheetRootRoute.name,
          path: '',
          args: SheetRootRouteArgs(
            key: key,
            onNext: onNext,
          ),
        );

  static const String name = 'SheetRootRoute';
}

class SheetRootRouteArgs {
  const SheetRootRouteArgs({
    this.key,
    this.onNext,
  });

  final _i6.Key? key;

  final void Function()? onNext;

  @override
  String toString() {
    return 'SheetRootRouteArgs{key: $key, onNext: $onNext}';
  }
}

/// generated route for
/// [_i4.SheetSecond]
class SheetSecondRoute extends _i5.PageRouteInfo<SheetSecondRouteArgs> {
  SheetSecondRoute({
    _i6.Key? key,
    void Function()? onNext,
  }) : super(
          SheetSecondRoute.name,
          path: 'sheet-second',
          args: SheetSecondRouteArgs(
            key: key,
            onNext: onNext,
          ),
        );

  static const String name = 'SheetSecondRoute';
}

class SheetSecondRouteArgs {
  const SheetSecondRouteArgs({
    this.key,
    this.onNext,
  });

  final _i6.Key? key;

  final void Function()? onNext;

  @override
  String toString() {
    return 'SheetSecondRouteArgs{key: $key, onNext: $onNext}';
  }
}
