import 'package:auto_route/auto_route.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_auto_route/lib/core_auto_route.dart';
import 'package:flutter_navigator_2_example/packages/core/core_storage_provider/core_storage_provider_interface/lib/core_storage_provider_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AuthGuard extends AutoRouteGuard {
  final FlagStorageProvider _flagStorageProvider;

  AuthGuard(
    this._flagStorageProvider,
  );

  @override
  Future<bool> canNavigate(List<PageRouteInfo> pendingRoutes, StackRouter router) async {
    if (_flagStorageProvider.isSignedIn()) {
      return true;
    }

    router.push(const LoginRoute());
    return false;
  }
}
