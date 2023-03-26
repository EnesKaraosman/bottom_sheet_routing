import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sheet_route/initial.dart';
import 'package:sheet_route/sheet_flow/sheet_root.dart';
import 'package:sheet_route/sheet_flow/sheet_second.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: InitialScreen,
      initial: true,
    ),
    CustomRoute(
      name: 'BottomSheetRouter',
      customRouteBuilder: modalSheetBuilder,
      children: [
        AutoRoute(
          page: SheetRoot,
          name: 'SheetRootRoute',
          initial: true,
        ),
        AutoRoute(
          page: SheetSecond,
          name: 'SheetSecondRoute',
        ),
      ],
      page: EmptyRouterPage,
    ),
  ],
)
class $AppRouter {}

class EmptyRouterPage extends AutoRouter {
  const EmptyRouterPage({Key? key}) : super(key: key);
}

Route<T> modalSheetBuilder<T>(
  BuildContext context,
  Widget child,
  CustomPage<T> page,
) {
  return ModalBottomSheetRoute(
    settings: page,
    builder: (context) => child,
    constraints: BoxConstraints(
      maxHeight: MediaQuery.of(context).size.height * 0.9,
    ),
    clipBehavior: Clip.antiAlias,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
    ),
    isScrollControlled: true,
  );
}
