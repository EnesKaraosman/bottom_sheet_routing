import 'package:flutter/material.dart';
import 'package:sheet_route/router/route_observer.dart';
import 'package:sheet_route/router/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

final appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRouter.delegate(
        navigatorObservers: () => [RouterObserver()],
      ),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
