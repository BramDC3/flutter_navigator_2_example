import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_shared/core_routing_shared_interface/lib/core_routing_shared_interface.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RoutingModule {
  PlatformRouteInformationProvider providePlatformRouteInformationProvider(InitialRouteProvider initialRouteProvider) {
    return PlatformRouteInformationProvider(
      initialRouteInformation: RouteInformation(location: initialRouteProvider.initialRoute),
    );
  }
}
