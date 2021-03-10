import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_2_interface/lib/core_navigator_2_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_shared/core_routing_shared_interface/lib/core_routing_shared_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppRouteInformationParser)
class AppRouteInformationParserImpl implements AppRouteInformationParser {
  final RouteParser _routeParser;

  AppRouteInformationParserImpl(
    this._routeParser,
  );

  @override
  Future<AppPath> parseRouteInformation(RouteInformation routeInformation) {
    return SynchronousFuture(_routeParser.parseRoute(routeInformation.location!));
  }

  @override
  RouteInformation? restoreRouteInformation(AppPath path) {
    return path.when(
      home: () => const RouteInformation(location: Routes.home),
      login: () => const RouteInformation(location: Routes.login),
      tvShow: (showName) => RouteInformation(location: '${Routes.tvShow}?${Routes.showNameParam}=$showName'),
      episode: (episodeId, _) => RouteInformation(location: '${Routes.episode}?${Routes.episodeIdParam}=$episodeId'),
      unknown: () => const RouteInformation(location: Routes.unknown),
    );
  }
}
