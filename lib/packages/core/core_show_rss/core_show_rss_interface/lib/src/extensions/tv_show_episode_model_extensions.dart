import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/src/tv_shows/entities/tv_show_episode.dart';
import 'package:flutter_navigator_2_example/packages/core/core_show_rss/core_show_rss_interface/lib/core_show_rss_interface.dart';

extension TvShowEpisodeModelExtensions on TvShowEpisodeModel {
  TvShowEpisode toEntity() {
    return TvShowEpisode(
      episodeId: int.parse(episodeId),
      episodeTitle: episodeTitle,
      releaseDate: DateTime.parse(releaseDate),
      showId: int.parse(showId),
      showName: showName,
      imageUrl: 'assets/images/$showName.jpeg',
    );
  }
}
