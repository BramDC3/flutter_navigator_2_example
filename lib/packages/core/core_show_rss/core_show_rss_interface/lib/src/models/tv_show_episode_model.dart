import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_show_episode_model.freezed.dart';
part 'tv_show_episode_model.g.dart';

@freezed
class TvShowEpisodeModel with _$TvShowEpisodeModel {
  const factory TvShowEpisodeModel({
    @JsonKey(name: 'tv:episode_id') required String episodeId,
    @JsonKey(name: 'title') required String episodeTitle,
    @JsonKey(name: 'pubDate') required String releaseDate,
    @JsonKey(name: 'tv:show_id') required String showId,
    @JsonKey(name: 'tv:show_name') required String showName,
  }) = _TvShowEpisodeModel;

  factory TvShowEpisodeModel.fromJson(Map<String, dynamic> json) => _$TvShowEpisodeModelFromJson(json);
}
