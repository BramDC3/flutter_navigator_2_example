import 'package:flutter/foundation.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';

@immutable
class EpisodeScreenParameters {
  final int episodeId;
  final TvShowEpisode? episode;

  const EpisodeScreenParameters({
    required this.episodeId,
    this.episode,
  });
}
