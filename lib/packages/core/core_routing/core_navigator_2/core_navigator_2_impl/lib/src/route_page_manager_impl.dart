import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/src/tv_shows/entities/tv_show_episode.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_2/core_navigator_2_interface/lib/core_navigator_2_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_shared/core_routing_shared_interface/lib/core_routing_shared_interface.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_episode/lib/feature_episode.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_home/lib/feature_home.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_login/lib/feature_login.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_tv_show/lib/feature_tv_show.dart';
import 'package:flutter_navigator_2_example/packages/ui_components/lib/ui_components.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RoutePageManager)
class RoutePageManagerImpl extends ChangeNotifier implements RoutePageManager {
  static const _homeKey = 'home';
  static const _loginKey = 'login';
  static const _tvShowKey = 'tvShow';
  static const _episodeKey = 'episode';
  static const _unknownKey = 'unknown';

  final RouteParser _routeParser;

  final GlobalKey<NavigatorState> _navigatorKey;
  final List<Page> _pages;

  RoutePageManagerImpl(
    this._routeParser,
  )   : _navigatorKey = GlobalKey<NavigatorState>(),
        _pages = [];

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  List<Page> get pages => List.unmodifiable(_pages);

  @override
  AppPath get currentPath => _routeParser.parseRoute(_pages.last.name!);

  @override
  Future<void> setNewRoutePath(AppPath path) {
    path.when(
      home: () {
        if (!_pages.any((page) => page.key == const ValueKey(_homeKey))) {
          _addPage(
            const HomeScreenProvider(),
            const ValueKey(_homeKey),
            Routes.home,
          );
        }

        _pages.removeWhere(
          (page) => page.key != const ValueKey(_homeKey),
        );
      },
      login: () {
        if (!_pages.any((page) => page.key == const ValueKey(_loginKey))) {
          _addPage(
            const LoginScreenProvider(),
            const ValueKey(_loginKey),
            Routes.login,
          );
        }

        _pages.removeWhere(
          (page) => page.key != const ValueKey(_loginKey),
        );
      },
      tvShow: (showName) {
        final valueKey = ValueKey('$_tvShowKey $showName');
        if (_pages.any((page) => page.key == valueKey)) {
          while (_pages.last.key != valueKey) {
            _pages.removeLast();
          }
          return;
        }

        final params = TvShowScreenParameters(showName: showName);
        _addPage(
          TvShowScreenProvider(tvShowScreenParameters: params),
          valueKey,
          Routes.getTvShowRoute(showName),
        );
      },
      episode: (episodeId, episode) {
        final valueKey = ValueKey('$_episodeKey $episodeId');
        if (_pages.any((page) => page.key == valueKey)) {
          while (_pages.last.key != valueKey) {
            _pages.removeLast();
          }
          return;
        }

        final params = EpisodeScreenParameters(episodeId: episodeId, episode: episode);
        _addPage(
          EpisodeScreenProvider(episodeScreenParameters: params),
          valueKey,
          Routes.getEpisodeRoute(episodeId),
        );
      },
      unknown: () => _addPage(
        const UnknownScreenProvider(),
        const ValueKey(_unknownKey),
        Routes.unknown,
      ),
    );

    notifyListeners();
    return SynchronousFuture(null);
  }

  void _addPage(Widget child, ValueKey<String> key, String name) {
    _pages.add(
      MaterialPage<void>(
        child: child,
        key: key,
        name: name,
      ),
    );
  }

  @override
  void didPop(Page page) {
    _pages.remove(page);
    notifyListeners();
  }

  @override
  Future<void> showHome() async {
    await setNewRoutePath(const AppPath.home());
  }

  @override
  Future<void> showLogin() async {
    await setNewRoutePath(const AppPath.login());
  }

  @override
  Future<void> showTvShow(String showName) async {
    await setNewRoutePath(AppPath.tvShow(showName));
  }

  @override
  Future<void> showTvShowEpisode(int episodeId, TvShowEpisode? episode) async {
    await setNewRoutePath(AppPath.episode(episodeId, episode));
  }
}
