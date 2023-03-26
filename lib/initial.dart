import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sheet_route/router/router.dart';
import 'package:sheet_route/sheet_flow/sheet_root.dart';
import 'package:sheet_route/sheet_flow/sheet_second.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Screen'),
      ),
      body: Center(
        child: Column(
          children: const [
            _AutoRouteBottomSheet(),
            _NavigatorBottomSheet(),
          ],
        ),
      ),
    );
  }
}

class _NavigatorBottomSheet extends StatelessWidget {
  const _NavigatorBottomSheet();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (ctx) => Navigator(
            onGenerateRoute: (settings) => MaterialPageRoute(
              builder: (context) => SheetRoot(
                onNext: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SheetSecond(
                      onNext: () => Navigator.of(context, rootNavigator: true).pop(),
                    ),
                  ),
                ),
              ),
              settings: settings,
            ),
            initialRoute: '/',
          ),
          useRootNavigator: true,
          clipBehavior: Clip.antiAlias,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.9,
            minHeight: MediaQuery.of(context).size.height * 0.8,
          ),
        );
      },
      child: const Text('Navigator Bottom Sheet'),
    );
  }
}

class _AutoRouteBottomSheet extends StatelessWidget {
  const _AutoRouteBottomSheet();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.router.push(
        BottomSheetRouter(
          children: [
            SheetRootRoute(
              onNext: () => context.router.push(
                SheetSecondRoute(
                  onNext: () => context.router.navigate(const InitialRoute()),
                ),
              ),
            )
          ],
        ),
      ),
      child: const Text('Auto Route Bottom Sheet'),
    );
  }
}
