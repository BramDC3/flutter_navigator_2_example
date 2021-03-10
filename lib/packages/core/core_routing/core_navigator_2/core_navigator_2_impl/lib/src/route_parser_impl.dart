import 'package:flutter_navigator_2_example/packages/core/core_routing/core_navigator_2/core_navigator_2_interface/lib/core_navigator_2_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_shared/core_routing_shared_interface/lib/core_routing_shared_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RouteParser)
class RouteParserImpl implements RouteParser {
  @override
  AppPath parseRoute(String uri) {
    if (uri == Routes.home) {
      return const AppPath.home();
    }

    if (uri.toString() == Routes.login) {
      return const AppPath.login();
    }

    if (uri.contains(Routes.tvShow)) {
      final showName = Routes.parseShowNameFromRoute(uri.toString());
      if (showName != null) {
        return AppPath.tvShow(showName);
      }

      return const AppPath.unknown();
    }

    if (uri.contains(Routes.episode)) {
      final episodeId = Routes.parseEpisodeIdFromRoute(uri.toString());
      if (episodeId != null) {
        return AppPath.episode(episodeId, null);
      }

      return const AppPath.unknown();
    }

    return const AppPath.unknown();
  }
}
