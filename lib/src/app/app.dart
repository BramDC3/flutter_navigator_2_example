import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_messaging/core_messaging_interface/lib/core_messaging_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_interface/lib/core_routing_interface.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    final appRouter = Provider.of<AppRouter>(context);
    final snackBarService = Provider.of<SnackBarService>(context);

    return MaterialApp(
      title: 'Navigator 2.0 Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      scaffoldMessengerKey: snackBarService.messengerKey,
      navigatorKey: appRouter.navigatorKey,
      onGenerateRoute: appRouter.onGenerateRoute,
      initialRoute: appRouter.initialRoute,
    );
  }
}
