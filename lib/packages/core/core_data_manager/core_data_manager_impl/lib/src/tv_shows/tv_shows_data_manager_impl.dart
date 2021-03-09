import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/src/tv_shows/entities/tv_show_episode.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/src/tv_shows/tv_shows_data_manager.dart';
import 'package:flutter_navigator_2_example/packages/core/core_show_rss/core_show_rss_interface/lib/core_show_rss_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TvShowsDataManager)
class TvShowsDataManagerImpl implements TvShowsDataManager {
  final ShowRssApiProvider _showRssApiProvider;

  TvShowsDataManagerImpl(
    this._showRssApiProvider,
  );

  @override
  Future<Iterable<TvShowEpisode>> getPersonalRecentEpisodes() async {
    final models = await _showRssApiProvider.getPersonalRecentEpisodes();
    return models.map((model) => model.toEntity());
  }

  @override
  Future<Iterable<TvShowEpisode>> getPersonalUpcomingEpisodes() async {
    final models = await _showRssApiProvider.getPersonalUpcomingEpisodes();
    return models.map((model) => model.toEntity());
  }

  @override
  Future<Iterable<TvShowEpisode>> getShowRecentEpisodes(String showName) async {
    final models = await _showRssApiProvider.getShowRecentEpisodes(showName);
    return models.map((model) => model.toEntity());
  }

  @override
  Future<Iterable<TvShowEpisode>> getShowUpcomingEpisodes(String showName) async {
    final models = await _showRssApiProvider.getShowUpcomingEpisodes(showName);
    return models.map((model) => model.toEntity());
  }

  @override
  Future<TvShowEpisode> getTvShowEpisodeById(int episodeId) async {
    final model = await _showRssApiProvider.getEpisodeById(episodeId);
    return model.toEntity();
  }
}
