import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_interface/lib/core_routing_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

@Injectable()
class HomeViewModel {
  final AppRouter _router;
  final DataManager _dataManager;

  final _recentEpisodes = BehaviorSubject<Iterable<TvShowEpisode>>();
  Stream<Iterable<TvShowEpisode>> get recentEpisodes => _recentEpisodes.stream;

  final _upcomingEpisodes = BehaviorSubject<Iterable<TvShowEpisode>>();
  Stream<Iterable<TvShowEpisode>> get upcomingEpisodes => _upcomingEpisodes.stream;

  HomeViewModel(
    this._router,
    this._dataManager,
  ) {
    _init();
  }

  Future<void> _init() async {
    final recentEpisodes = await _dataManager.getPersonalRecentEpisodes();
    final upcomingEpisodes = await _dataManager.getPersonalUpcomingEpisodes();

    _recentEpisodes.add(recentEpisodes);
    _upcomingEpisodes.add(upcomingEpisodes);
  }

  Future<void> onTvShowEpisodePressed(TvShowEpisode episode) async {
    await _router.showTvShowEpisode(episode.episodeId, episode);
  }

  void dispose() {
    _recentEpisodes.close();
    _upcomingEpisodes.close();
  }
}
