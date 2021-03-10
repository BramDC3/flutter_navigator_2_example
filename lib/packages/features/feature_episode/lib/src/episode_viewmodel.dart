import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_shared/core_routing_shared_interface/lib/core_routing_shared_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

@Injectable()
class EpisodeViewModel {
  final int? _episodeId;
  final TvShowEpisode? _episode;
  final RouterHelper _routerHelper;
  final DataManager _dataManager;

  int get episodeId => _episodeId ?? -1;

  final _episodeSubject = BehaviorSubject<TvShowEpisode?>();
  Stream<TvShowEpisode?> get episode => _episodeSubject.stream;

  EpisodeViewModel(
    @factoryParam this._episodeId,
    @factoryParam this._episode,
    this._routerHelper,
    this._dataManager,
  ) {
    _init();
  }

  Future<void> _init() async {
    final prefetchedEpisode = _episode;
    if (prefetchedEpisode != null) {
      _episodeSubject.add(prefetchedEpisode);
      return;
    }

    final episode = await _dataManager.getTvShowEpisodeById(episodeId);
    _episodeSubject.add(episode);
  }

  Future<void> onShowAllEpisodesPressed() async {
    final episode = _episodeSubject.valueWrapper?.value;
    if (episode == null) {
      return;
    }

    await _routerHelper.showTvShow(episode.showName);
  }
}
