import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/src/di/di.dart';
import 'package:provider/provider.dart';

import '../tv_show_viewmodel.dart';
import 'tv_show_screen.dart';

class TvShowScreenProvider extends StatelessWidget {
  final String showName;

  const TvShowScreenProvider({
    required this.showName,
  });

  @override
  Widget build(BuildContext context) {
    return Provider<TvShowViewModel>(
      create: (_) => di.get<TvShowViewModel>(param1: showName),
      dispose: (_, vm) => vm.dispose(),
      child: const TvShowScreen(),
    );
  }
}
