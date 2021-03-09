import 'entities/tv_show_episode.dart';

abstract class TvShowsDataManager {
  Future<Iterable<TvShowEpisode>> getPersonalRecentEpisodes();
  Future<Iterable<TvShowEpisode>> getPersonalUpcomingEpisodes();
  Future<Iterable<TvShowEpisode>> getShowRecentEpisodes(String showName);
  Future<Iterable<TvShowEpisode>> getShowUpcomingEpisodes(String showName);
  Future<TvShowEpisode> getTvShowEpisodeById(int episodeId);
}
