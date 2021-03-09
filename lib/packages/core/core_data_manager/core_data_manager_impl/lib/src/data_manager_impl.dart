import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/src/data_manager.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/src/tv_shows/entities/tv_show_episode.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/src/tv_shows/tv_shows_data_manager.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DataManager)
class DataManagerImpl implements DataManager {
  final TvShowsDataManager _tvShowsDataManager;

  DataManagerImpl(
    this._tvShowsDataManager,
  );

  @override
  Future<Iterable<TvShowEpisode>> getPersonalRecentEpisodes() {
    return _tvShowsDataManager.getPersonalRecentEpisodes();
  }

  @override
  Future<Iterable<TvShowEpisode>> getPersonalUpcomingEpisodes() {
    return _tvShowsDataManager.getPersonalUpcomingEpisodes();
  }

  @override
  Future<Iterable<TvShowEpisode>> getShowRecentEpisodes(String showName) {
    return _tvShowsDataManager.getShowRecentEpisodes(showName);
  }

  @override
  Future<Iterable<TvShowEpisode>> getShowUpcomingEpisodes(String showName) {
    return _tvShowsDataManager.getShowUpcomingEpisodes(showName);
  }

  @override
  Future<TvShowEpisode> getTvShowEpisodeById(int episodeId) {
    return _tvShowsDataManager.getTvShowEpisodeById(episodeId);
  }
}
