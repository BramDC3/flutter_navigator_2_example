import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_shared/core_routing_shared_interface/lib/core_routing_shared_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

@Injectable()
class TvShowViewModel {
  final String? _showName;
  final RouterHelper _routerHelper;
  final DataManager _dataManager;

  String get showName => _showName ?? '';

  final _recentEpisodes = BehaviorSubject<Iterable<TvShowEpisode>>();
  Stream<Iterable<TvShowEpisode>> get recentEpisodes => _recentEpisodes.stream;

  final _upcomingEpisodes = BehaviorSubject<Iterable<TvShowEpisode>>();
  Stream<Iterable<TvShowEpisode>> get upcomingEpisodes => _upcomingEpisodes.stream;

  TvShowViewModel(
    @factoryParam this._showName,
    this._routerHelper,
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
    await _routerHelper.showTvShowEpisode(episode.episodeId, episode);
  }

  void dispose() {
    _recentEpisodes.close();
    _upcomingEpisodes.close();
  }
}
