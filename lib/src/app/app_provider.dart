import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_general/lib/core_general.dart';
import 'package:flutter_navigator_2_example/src/di/di.dart';
import 'package:provider/provider.dart';

import 'app.dart';

class AppProvider extends StatelessWidget {
  const AppProvider();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => di.get<DateFormatter>()),
      ],
      child: const App(),
    );
  }
}
