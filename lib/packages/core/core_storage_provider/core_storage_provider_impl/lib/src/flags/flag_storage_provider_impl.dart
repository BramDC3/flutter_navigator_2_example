import 'package:flutter_navigator_2_example/packages/core/core_storage_provider/core_storage_provider_interface/lib/core_storage_provider_interface.dart';
import 'package:flutter_navigator_2_example/packages/wrappers/wrapper_shared_preferences/wrapper_shared_preferences_interface/lib/wrapper_shared_preferences_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FlagStorageProvider)
class FlagStorageProviderImpl implements FlagStorageProvider {
  static const _isSignedInKey = 'isSignedIn';

  final SharedPreferencesWrapper _sharedPreferences;

  FlagStorageProviderImpl(
    this._sharedPreferences,
  );

  @override
  bool isSignedIn() {
    return _sharedPreferences.getBool(_isSignedInKey);
  }

  @override
  Future<void> saveIsSignedIn({required bool signedIn}) {
    return _sharedPreferences.setBool(_isSignedInKey, value: signedIn);
  }
}
