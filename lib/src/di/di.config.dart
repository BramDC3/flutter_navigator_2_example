// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../../packages/core/core_authentication/core_authentication_impl/lib/src/authentication_provider_impl.dart'
    as _i22;
import '../../packages/core/core_authentication/core_authentication_interface/lib/core_authentication_interface.dart'
    as _i21;
import '../../packages/core/core_data_manager/core_data_manager_impl/lib/src/data_manager_impl.dart'
    as _i24;
import '../../packages/core/core_data_manager/core_data_manager_impl/lib/src/tv_shows/tv_shows_data_manager_impl.dart'
    as _i20;
import '../../packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart'
    as _i7;
import '../../packages/core/core_data_manager/core_data_manager_interface/lib/src/data_manager.dart'
    as _i23;
import '../../packages/core/core_data_manager/core_data_manager_interface/lib/src/tv_shows/tv_shows_data_manager.dart'
    as _i19;
import '../../packages/core/core_general/lib/src/formatters/date_formatter.dart'
    as _i5;
import '../../packages/core/core_messaging/core_messaging_impl/lib/src/snack_bar/snack_bar_service_impl.dart'
    as _i12;
import '../../packages/core/core_messaging/core_messaging_interface/lib/core_messaging_interface.dart'
    as _i11;
import '../../packages/core/core_show_rss/core_show_rss_impl/lib/src/helpers/xml_parser.dart'
    as _i14;
import '../../packages/core/core_show_rss/core_show_rss_impl/lib/src/show_rss_api_provider_impl.dart'
    as _i18;
import '../../packages/core/core_show_rss/core_show_rss_interface/lib/core_show_rss_interface.dart'
    as _i17;
import '../../packages/core/core_storage_provider/core_storage_provider_impl/lib/src/flags/flag_storage_provider_impl.dart'
    as _i16;
import '../../packages/core/core_storage_provider/core_storage_provider_interface/lib/core_storage_provider_interface.dart'
    as _i15;
import '../../packages/features/home/home_viewmodel.dart' as _i6;
import '../../packages/features/login/login_viewmodel.dart' as _i25;
import '../../packages/features/tv_show/tv_show_viewmodel.dart' as _i13;
import '../../packages/wrappers/wrapper_assets/wrapper_assets_impl/lib/src/assets_provider_impl.dart'
    as _i4;
import '../../packages/wrappers/wrapper_assets/wrapper_assets_interface/lib/wrapper_assets_interface.dart'
    as _i3;
import '../../packages/wrappers/wrapper_shared_preferences/wrapper_shared_preferences_impl/lib/src/shared_preferences_wrapper_impl.dart'
    as _i10;
import '../../packages/wrappers/wrapper_shared_preferences/wrapper_shared_preferences_interface/lib/wrapper_shared_preferences_interface.dart'
    as _i9;
import 'modules/third_party_modules.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.lazySingleton<_i3.AssetsProvider>(() => _i4.AssetsProviderImpl());
  gh.lazySingleton<_i5.DateFormatter>(() => _i5.DateFormatter());
  gh.factory<_i6.HomeViewModel>(
      () => _i6.HomeViewModel(get<_i7.DataManager>()));
  await gh.factoryAsync<_i8.SharedPreferences>(
      () => sharedPreferencesModule.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i9.SharedPreferencesWrapper>(
      () => _i10.SharedPreferencesWrapperImpl(get<_i8.SharedPreferences>()));
  gh.lazySingleton<_i11.SnackBarService>(() => _i12.SnackBarServiceImpl());
  gh.factoryParam<_i13.TvShowViewModel, String?, dynamic>((_showName, _) =>
      _i13.TvShowViewModel(_showName, get<_i7.DataManager>()));
  gh.lazySingleton<_i14.XmlParser>(() => _i14.XmlParser());
  gh.lazySingleton<_i15.FlagStorageProvider>(
      () => _i16.FlagStorageProviderImpl(get<_i9.SharedPreferencesWrapper>()));
  gh.lazySingleton<_i17.ShowRssApiProvider>(() => _i18.ShowRssApiProviderImpl(
      get<_i14.XmlParser>(), get<_i3.AssetsProvider>()));
  gh.lazySingleton<_i19.TvShowsDataManager>(
      () => _i20.TvShowsDataManagerImpl(get<_i17.ShowRssApiProvider>()));
  gh.lazySingleton<_i21.AuthenticationProvider>(
      () => _i22.AuthenticationProviderImpl(get<_i15.FlagStorageProvider>()));
  gh.lazySingleton<_i23.DataManager>(
      () => _i24.DataManagerImpl(get<_i19.TvShowsDataManager>()));
  gh.factory<_i25.LoginViewModel>(() => _i25.LoginViewModel(
      get<_i21.AuthenticationProvider>(), get<_i11.SnackBarService>()));
  return get;
}

class _$SharedPreferencesModule extends _i26.SharedPreferencesModule {}
