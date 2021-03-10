import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_messaging/core_messaging_interface/lib/core_messaging_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_1_interface/lib/core_navigator_1_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_2_interface/lib/core_navigator_2_interface.dart';
import 'package:flutter_navigator_2_example/src/di/di.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    // Navigator 1.0
    final appRouter = di.get<AppRouter>();

    // Navigator 2.0
    final appRouterDelegate = di.get<AppRouterDelegate>();
    final appRouteInformationParser = di.get<AppRouteInformationParser>();
    final platformRouteInformationProvider = di.get<PlatformRouteInformationProvider>();

    final snackBarService = di.get<SnackBarService>();

    // Navigator 1.0
    // return MaterialApp(
    // Navigator 2.0
    return MaterialApp.router(
      title: 'Navigator 2.0 Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      scaffoldMessengerKey: snackBarService.messengerKey,
      // Navigator 1.0
      // navigatorKey: appRouter.navigatorKey,
      // onGenerateRoute: appRouter.onGenerateRoute,
      // initialRoute: appRouter.initialRoute,

      // Navigator 2.0
      routerDelegate: appRouterDelegate,
      routeInformationParser: appRouteInformationParser,
      routeInformationProvider: platformRouteInformationProvider,
    );
  }
}
