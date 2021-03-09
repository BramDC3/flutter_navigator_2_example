// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_episode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TvShowEpisodeModel _$_$_TvShowEpisodeModelFromJson(
    Map<String, dynamic> json) {
  return _$_TvShowEpisodeModel(
    episodeId: json['tv:episode_id'] as String,
    episodeTitle: json['title'] as String,
    releaseDate: json['pubDate'] as String,
    showId: json['tv:show_id'] as String,
    showName: json['tv:show_name'] as String,
  );
}

Map<String, dynamic> _$_$_TvShowEpisodeModelToJson(
        _$_TvShowEpisodeModel instance) =>
    <String, dynamic>{
      'tv:episode_id': instance.episodeId,
      'title': instance.episodeTitle,
      'pubDate': instance.releaseDate,
      'tv:show_id': instance.showId,
      'tv:show_name': instance.showName,
    };
