import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_2_interface/lib/core_navigator_2_interface.dart';

abstract class RoutePageManager extends ChangeNotifier {
  GlobalKey<NavigatorState> get navigatorKey;

  List<Page> get pages;

  AppPath get currentPath;

  Future<void> setNewRoutePath(AppPath configuration);

  void didPop(Page page);

  Future<void> showHome();

  Future<void> showLogin();

  Future<void> showTvShow(String showName);

  Future<void> showTvShowEpisode(int episodeId, TvShowEpisode? episode);
}
