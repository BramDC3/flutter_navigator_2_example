import 'package:flutter/foundation.dart';

@immutable
class TvShowEpisode {
  final int episodeId;
  final String episodeTitle;
  final DateTime releaseDate;
  final int showId;
  final String showName;
  final String imageUrl;

  const TvShowEpisode({
    required this.episodeId,
    required this.episodeTitle,
    required this.releaseDate,
    required this.showId,
    required this.showName,
    required this.imageUrl,
  });
}
