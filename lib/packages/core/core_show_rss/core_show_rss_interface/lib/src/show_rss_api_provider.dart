import 'models/tv_show_episode_model.dart';

abstract class ShowRssApiProvider {
  Future<Iterable<TvShowEpisodeModel>> getPersonalRecentEpisodes();
  Future<Iterable<TvShowEpisodeModel>> getPersonalUpcomingEpisodes();
  Future<Iterable<TvShowEpisodeModel>> getShowRecentEpisodes(String showName);
  Future<Iterable<TvShowEpisodeModel>> getShowUpcomingEpisodes(String showName);
  Future<TvShowEpisodeModel> getEpisodeById(int episodeId);
}
