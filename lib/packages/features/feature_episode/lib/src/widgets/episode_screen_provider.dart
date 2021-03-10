import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_shared/core_routing_shared_interface/lib/core_routing_shared_interface.dart';
import 'package:flutter_navigator_2_example/src/di/di.dart';
import 'package:provider/provider.dart';

import '../episode_viewmodel.dart';
import 'episode_screen.dart';

class EpisodeScreenProvider extends StatelessWidget {
  final int? episodeId;
  final TvShowEpisode? episode;

  const EpisodeScreenProvider({
    @QueryParam(Routes.episodeIdParam) required this.episodeId,
    this.episode,
  });
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => di.get<EpisodeViewModel>(param1: episodeId, param2: episode),
      child: EpisodeScreen(episode: episode),
    );
  }
}
