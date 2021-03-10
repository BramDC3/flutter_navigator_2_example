// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../../../../features/feature_episode/lib/feature_episode.dart' as _i7;
import '../../../../../features/feature_home/lib/feature_home.dart' as _i4;
import '../../../../../features/feature_login/lib/feature_login.dart' as _i5;
import '../../../../../features/feature_tv_show/lib/feature_tv_show.dart' as _i6;
import '../../../../../ui_components/lib/ui_components.dart' as _i8;
import '../../../../core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart' as _i9;
import 'guards/auth_guard.dart' as _i3;

class AppAutoRouter extends _i1.RootStackRouter {
  AppAutoRouter({required this.authGuard}) : assert(authGuard != null);

  final _i3.AuthGuard authGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i4.HomeScreenProvider());
    },
    LoginRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i5.LoginScreenProvider());
    },
    TvShowRoute.name: (entry) {
      var route = entry.routeData.as<TvShowRoute>();
      return _i1.AdaptivePage(entry: entry, child: _i6.TvShowScreenProvider(showName: route.showName));
    },
    EpisodeRoute.name: (entry) {
      var route = entry.routeData.as<EpisodeRoute>();
      return _i1.AdaptivePage(
          entry: entry, child: _i7.EpisodeScreenProvider(episodeId: route.episodeId, episode: route.episode));
    },
    UnknownRoute.name: (entry) {
      return _i1.AdaptivePage(entry: entry, child: _i8.UnknownScreenProvider());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<HomeRoute>(HomeRoute.name,
            path: '/', routeBuilder: (match) => HomeRoute.fromMatch(match), guards: [authGuard]),
        _i1.RouteConfig<LoginRoute>(LoginRoute.name,
            path: 'login', routeBuilder: (match) => LoginRoute.fromMatch(match)),
        _i1.RouteConfig<TvShowRoute>(TvShowRoute.name,
            path: '/tv_show', routeBuilder: (match) => TvShowRoute.fromMatch(match)),
        _i1.RouteConfig<EpisodeRoute>(EpisodeRoute.name,
            path: '/episode', routeBuilder: (match) => EpisodeRoute.fromMatch(match)),
        _i1.RouteConfig<UnknownRoute>(UnknownRoute.name,
            path: '*', routeBuilder: (match) => UnknownRoute.fromMatch(match))
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  HomeRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HomeRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: 'login');

  LoginRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'LoginRoute';
}

class TvShowRoute extends _i1.PageRouteInfo {
  TvShowRoute({required this.showName}) : super(name, path: '/tv_show', queryParams: {'showName': showName});

  TvShowRoute.fromMatch(_i1.RouteMatch match)
      : showName = match.queryParams.getString('showName'),
        super.fromMatch(match);

  final String? showName;

  static const String name = 'TvShowRoute';
}

class EpisodeRoute extends _i1.PageRouteInfo {
  EpisodeRoute({required this.episodeId, this.episode})
      : super(name, path: '/episode', queryParams: {'episodeId': episodeId});

  EpisodeRoute.fromMatch(_i1.RouteMatch match)
      : episodeId = match.queryParams.getInt('episodeId'),
        episode = null,
        super.fromMatch(match);

  final int? episodeId;

  final _i9.TvShowEpisode? episode;

  static const String name = 'EpisodeRoute';
}

class UnknownRoute extends _i1.PageRouteInfo {
  const UnknownRoute() : super(name, path: '*');

  UnknownRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'UnknownRoute';
}
