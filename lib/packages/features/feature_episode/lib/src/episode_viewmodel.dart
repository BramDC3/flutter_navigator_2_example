import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_interface/lib/core_routing_interface.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_episode/lib/feature_episode.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

@Injectable()
class EpisodeViewModel {
  final EpisodeScreenParameters? _episodeScreenParameters;
  final AppRouter _router;
  final DataManager _dataManager;

  int get episodeId => _episodeScreenParameters?.episodeId ?? -1;

  final _episode = BehaviorSubject<TvShowEpisode?>();
  Stream<TvShowEpisode?> get episode => _episode.stream;

  EpisodeViewModel(
    @factoryParam this._episodeScreenParameters,
    this._router,
    this._dataManager,
  ) {
    _init();
  }

  Future<void> _init() async {
    final prefetchedEpisode = _episodeScreenParameters?.episode;
    if (prefetchedEpisode != null) {
      _episode.add(prefetchedEpisode);
      return;
    }

    final episode = await _dataManager.getTvShowEpisodeById(episodeId);
    _episode.add(episode);
  }

  Future<void> onShowAllEpisodesPressed() async {
    final episode = _episode.valueWrapper?.value;
    if (episode != null) {
      await _router.showTvShow(episode.showName);
    }
  }
}
