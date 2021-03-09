import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

@Injectable()
class EpisodeViewModel {
  final int? _episodeId;
  final TvShowEpisode? _prefetchedEpisode;
  final DataManager _dataManager;

  int get episodeId => _episodeId ?? -1;

  final _episode = BehaviorSubject<TvShowEpisode?>();
  Stream<TvShowEpisode?> get episode => _episode.stream;

  EpisodeViewModel(
    @factoryParam this._episodeId,
    @factoryParam this._prefetchedEpisode,
    this._dataManager,
  ) {
    _init();
  }

  Future<void> _init() async {
    if (_prefetchedEpisode != null) {
      _episode.add(_prefetchedEpisode);
      return;
    }

    final episode = await _dataManager.getTvShowEpisodeById(episodeId);
    _episode.add(episode);
  }

  Future<void> onShowAllEpisodesPressed() async {}
}
