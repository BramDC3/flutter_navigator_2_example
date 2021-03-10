import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_tv_show/lib/feature_tv_show.dart';
import 'package:flutter_navigator_2_example/src/di/di.dart';
import 'package:provider/provider.dart';

import '../tv_show_viewmodel.dart';
import 'tv_show_screen.dart';

class TvShowScreenProvider extends StatelessWidget {
  final TvShowScreenParameters tvShowScreenParameters;

  const TvShowScreenProvider({
    required this.tvShowScreenParameters,
  });

  @override
  Widget build(BuildContext context) {
    return Provider<TvShowViewModel>(
      create: (_) => di.get<TvShowViewModel>(param1: tvShowScreenParameters),
      dispose: (_, vm) => vm.dispose(),
      child: const TvShowScreen(),
    );
  }
}
