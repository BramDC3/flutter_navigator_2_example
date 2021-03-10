import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_episode/lib/src/models/episode_screen_parameters.dart';
import 'package:flutter_navigator_2_example/src/di/di.dart';
import 'package:provider/provider.dart';

import '../episode_viewmodel.dart';
import 'episode_screen.dart';

class EpisodeScreenProvider extends StatelessWidget {
  final EpisodeScreenParameters episodeScreenParameters;

  const EpisodeScreenProvider({
    required this.episodeScreenParameters,
  });

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => di.get<EpisodeViewModel>(param1: episodeScreenParameters),
      child: EpisodeScreen(episode: episodeScreenParameters.episode),
    );
  }
}
