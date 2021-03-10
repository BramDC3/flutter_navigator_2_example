import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_path.freezed.dart';

@freezed
abstract class AppPath with _$AppPath {
  const factory AppPath.home() = HomePath;
  const factory AppPath.login() = LoginPath;
  const factory AppPath.tvShow(String showName) = TvShowPath;
  const factory AppPath.episode(int episodeId, TvShowEpisode? tvShowEpisode) = EpisodePath;
  const factory AppPath.unknown() = UnknownPath;
}
