class Routes {
  static const home = '/';

  static const login = 'login';

  static const tvShow = '/tv_show';
  static const showNameParam = 'showName';
  static String getTvShowRoute(String showName) => '$tvShow?$showNameParam=$showName';
  static String? parseShowNameFromRoute(String route) {
    final queryParams = Uri.parse(route).queryParameters;
    return queryParams[showNameParam];
  }

  static const episode = '/episode';
  static const episodeIdParam = 'episodeId';
  static String getEpisodeRoute(int episodeId) => '$episode?$episodeIdParam=$episodeId';
  static int? parseEpisodeIdFromRoute(String route) {
    final queryParams = Uri.parse(route).queryParameters;
    final episodeIdString = queryParams[episodeIdParam];

    if (episodeIdString == null) {
      return null;
    }

    return int.parse(episodeIdString);
  }

  static const unknown = 'unknown';
}
