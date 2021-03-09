import 'package:flutter_navigator_2_example/packages/core/core_authentication/core_authentication_interface/lib/core_authentication_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_storage_provider/core_storage_provider_interface/lib/core_storage_provider_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthenticationProvider)
class AuthenticationProviderImpl implements AuthenticationProvider {
  final FlagStorageProvider _flagStorageProvider;

  AuthenticationProviderImpl(
    this._flagStorageProvider,
  );

  @override
  Future<void> signIn(User user) async {
    await _flagStorageProvider.saveIsSignedIn(signedIn: true);
  }
}
