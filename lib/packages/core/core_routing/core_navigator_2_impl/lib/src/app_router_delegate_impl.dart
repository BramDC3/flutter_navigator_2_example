import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_2_interface/lib/core_navigator_2_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

@LazySingleton(as: AppRouterDelegate)
class AppRouterDelegateImpl extends RouterDelegate<AppPath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppPath>
    implements AppRouterDelegate {
  final RoutePageManager _pageManager;

  AppRouterDelegateImpl(
    this._pageManager,
  ) {
    _pageManager.addListener(notifyListeners);
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => _pageManager.navigatorKey;

  @override
  AppPath get currentConfiguration => _pageManager.currentPath;

  @override
  Future<void> setNewRoutePath(AppPath configuration) async {
    await _pageManager.setNewRoutePath(configuration);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RoutePageManager>.value(
      value: _pageManager,
      child: Consumer<RoutePageManager>(
        builder: (context, pageManager, child) {
          return Navigator(
            key: navigatorKey,
            onPopPage: _onPopPage,
            pages: List.of(pageManager.pages),
          );
        },
      ),
    );
  }

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    final success = route.didPop(result);
    if (success) {
      _pageManager.didPop(route.settings as Page<dynamic>);
    }

    return success;
  }
}
