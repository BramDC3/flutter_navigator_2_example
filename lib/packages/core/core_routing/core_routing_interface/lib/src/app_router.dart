import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';

abstract class AppRouter {
  GlobalKey<NavigatorState> get navigatorKey;

  RouteFactory get onGenerateRoute;

  String get initialRoute;

  Future<void> showHome();

  Future<void> showLogin();

  Future<void> showTvShow(String showName);

  Future<void> showTvShowEpisode(int episodeId, TvShowEpisode? episode);
}
