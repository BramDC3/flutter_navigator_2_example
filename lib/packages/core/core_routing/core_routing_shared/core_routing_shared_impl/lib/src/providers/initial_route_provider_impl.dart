import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_shared/core_routing_shared_interface/lib/core_routing_shared_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_storage_provider/core_storage_provider_interface/lib/core_storage_provider_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: InitialRouteProvider)
class InitialRouteProviderImpl implements InitialRouteProvider {
  final FlagStorageProvider _flagStorageProvider;

  InitialRouteProviderImpl(
    this._flagStorageProvider,
  );

  @override
  String get initialRoute {
    if (!_flagStorageProvider.isSignedIn()) {
      return Routes.login;
    }

    return Routes.home;
  }
}
