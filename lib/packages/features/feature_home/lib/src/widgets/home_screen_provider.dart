import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/src/di/di.dart';
import 'package:provider/provider.dart';

import '../home_viewmodel.dart';
import 'home_screen.dart';

class HomeScreenProvider extends StatelessWidget {
  const HomeScreenProvider();

  @override
  Widget build(BuildContext context) {
    return Provider<HomeViewModel>(
      create: (_) => di.get<HomeViewModel>(),
      dispose: (_, vm) => vm.dispose(),
      child: const HomeScreen(),
    );
  }
}
