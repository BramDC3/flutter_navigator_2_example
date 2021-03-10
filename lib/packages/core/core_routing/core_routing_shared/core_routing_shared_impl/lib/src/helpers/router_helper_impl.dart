import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/src/tv_shows/entities/tv_show_episode.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_auto_route/lib/core_auto_route.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_1/core_navigator_1_interface/lib/core_navigator_1_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_2/core_navigator_2_interface/lib/core_navigator_2_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_shared/core_routing_shared_interface/lib/core_routing_shared_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RouterHelper)
class RouterHelperImpl implements RouterHelper {
  // Navigator 1.0
  final AppRouter _appRouter;

  // Navigator 2.0
  final RoutePageManager _routePageManager;

  // Auto Route
  final AppAutoRouter _appAutoRouter;

  RouterHelperImpl(
    this._appRouter,
    this._routePageManager,
    this._appAutoRouter,
  );

  @override
  Future<void> showHome() async {
    await _appRouter.showHome();
    await _routePageManager.showHome();
    await _appAutoRouter.replace(const HomeRoute());
  }

  @override
  Future<void> showTvShow(String showName) async {
    await _appRouter.showTvShow(showName);
    await _routePageManager.showTvShow(showName);
    await _appAutoRouter.push(TvShowRoute(showName: showName));
  }

  @override
  Future<void> showTvShowEpisode(int episodeId, TvShowEpisode? episode) async {
    await _appRouter.showTvShowEpisode(episodeId, episode);
    await _routePageManager.showTvShowEpisode(episodeId, episode);
    await _appAutoRouter.push(EpisodeRoute(episodeId: episodeId, episode: episode));
  }
}
