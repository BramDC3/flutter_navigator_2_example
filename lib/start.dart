import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/src/di/di.dart';
import 'package:url_strategy/url_strategy.dart';

import 'src/app/app_provider.dart';

Future<void> start() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await initDependencies();
  runApp(const AppProvider());
}
