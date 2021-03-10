import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_general/lib/core_general.dart';
import 'package:flutter_navigator_2_example/packages/core/core_messaging/core_messaging_interface/lib/core_messaging_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_interface/lib/core_routing_interface.dart';
import 'package:flutter_navigator_2_example/src/di/di.dart';
import 'package:provider/provider.dart';

import 'app.dart';

class AppProvider extends StatelessWidget {
  const AppProvider();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => di.get<AppRouter>()),
        Provider(create: (_) => di.get<SnackBarService>()),
        Provider(create: (_) => di.get<DateFormatter>()),
      ],
      child: const App(),
    );
  }
}
