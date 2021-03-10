import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_1/core_navigator_1_interface/lib/core_navigator_1_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_shared/core_routing_shared_interface/lib/core_routing_shared_interface.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_episode/lib/feature_episode.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_home/lib/feature_home.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_login/lib/feature_login.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_tv_show/lib/feature_tv_show.dart';
import 'package:flutter_navigator_2_example/packages/ui_components/lib/ui_components.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppRouter)
class AppRouterImpl implements AppRouter {
  final InitialRouteProvider _initialRouteProvider;

  final GlobalKey<NavigatorState> _navigatorKey;

  AppRouterImpl(
    this._initialRouteProvider,
  ) : _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  RouteFactory get onGenerateRoute {
    return (RouteSettings settings) {
      final widget = _getWidgetForRoute(settings.name, settings.arguments);

      return MaterialPageRoute<void>(
        settings: settings,
        builder: (_) => widget,
      );
    };
  }

  Widget _getWidgetForRoute(String? widgetRoute, Object? arguments) {
    final args = arguments;

    final route = widgetRoute;
    if (route == null) {
      return const UnknownScreenProvider();
    }

    // Tv show.
    if (route.contains(Routes.tvShow)) {
      if (args is TvShowScreenParameters) {
        return TvShowScreenProvider(showName: args.showName);
      }

      final showName = Routes.parseShowNameFromRoute(route);
      if (showName != null) {
        return TvShowScreenProvider(showName: showName);
      }

      return const UnknownScreenProvider();
    }

    // Episode route.
    if (route.contains(Routes.episode)) {
      if (args is EpisodeScreenParameters) {
        return EpisodeScreenProvider(episodeId: args.episodeId, episode: args.episode);
      }

      final episodeId = Routes.parseEpisodeIdFromRoute(route);
      if (episodeId != null) {
        return EpisodeScreenProvider(episodeId: episodeId);
      }

      return const UnknownScreenProvider();
    }

    // Other routes.
    switch (route) {
      case Routes.home:
        return const HomeScreenProvider();
      case Routes.login:
        return const LoginScreenProvider();
      default:
        return const UnknownScreenProvider();
    }
  }

  @override
  String get initialRoute => _initialRouteProvider.initialRoute;

  @override
  Future<void> showHome() async {
    await _navigatorKey.currentState?.pushReplacementNamed(Routes.home);
  }

  @override
  Future<void> showTvShow(String showName) async {
    final args = TvShowScreenParameters(showName: showName);
    final route = Routes.getTvShowRoute(showName);
    await _navigatorKey.currentState?.pushNamed(route, arguments: args);
  }

  @override
  Future<void> showTvShowEpisode(int episodeId, TvShowEpisode? episode) async {
    final args = EpisodeScreenParameters(episodeId: episodeId, episode: episode);
    final route = Routes.getEpisodeRoute(episodeId);
    await _navigatorKey.currentState?.pushNamed(route, arguments: args);
  }
}
