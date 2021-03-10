import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';

abstract class RouterHelper {
  Future<void> showHome();

  Future<void> showTvShow(String showName);

  Future<void> showTvShowEpisode(int episodeId, TvShowEpisode? episode);
}
