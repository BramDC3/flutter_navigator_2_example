import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_1_interface/lib/core_navigator_1_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_2_interface/lib/core_navigator_2_interface.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_tv_show/lib/feature_tv_show.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

@Injectable()
class TvShowViewModel {
  final TvShowScreenParameters? _tvShowScreenParameters;
  // Navigator 1.0
  final AppRouter _router;
  // Navigator 2.0
  final RoutePageManager _routePageManager;
  final DataManager _dataManager;

  String get showName => _tvShowScreenParameters?.showName ?? '';

  final _recentEpisodes = BehaviorSubject<Iterable<TvShowEpisode>>();
  Stream<Iterable<TvShowEpisode>> get recentEpisodes => _recentEpisodes.stream;

  final _upcomingEpisodes = BehaviorSubject<Iterable<TvShowEpisode>>();
  Stream<Iterable<TvShowEpisode>> get upcomingEpisodes => _upcomingEpisodes.stream;

  TvShowViewModel(
    @factoryParam this._tvShowScreenParameters,
    this._router,
    this._routePageManager,
    this._dataManager,
  ) {
    _init();
  }

  Future<void> _init() async {
    final recentEpisodes = await _dataManager.getShowRecentEpisodes(showName);
    final upcomingEpisodes = await _dataManager.getShowUpcomingEpisodes(showName);

    _recentEpisodes.add(recentEpisodes);
    _upcomingEpisodes.add(upcomingEpisodes);
  }

  Future<void> onTvShowEpisodePressed(TvShowEpisode episode) async {
    // Navigator 1.0
    // await _router.showTvShowEpisode(episode.episodeId, episode);
    // Navigator 2.0
    await _routePageManager.showTvShowEpisode(episode.episodeId, episode);
  }

  void dispose() {
    _recentEpisodes.close();
    _upcomingEpisodes.close();
  }
}
