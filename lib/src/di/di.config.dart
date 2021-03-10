// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../packages/core/core_authentication/core_authentication_impl/lib/src/authentication_provider_impl.dart'
    as _i21;
import '../../packages/core/core_authentication/core_authentication_interface/lib/core_authentication_interface.dart'
    as _i20;
import '../../packages/core/core_data_manager/core_data_manager_impl/lib/src/data_manager_impl.dart'
    as _i23;
import '../../packages/core/core_data_manager/core_data_manager_impl/lib/src/tv_shows/tv_shows_data_manager_impl.dart'
    as _i17;
import '../../packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart'
    as _i26;
import '../../packages/core/core_data_manager/core_data_manager_interface/lib/src/data_manager.dart'
    as _i22;
import '../../packages/core/core_data_manager/core_data_manager_interface/lib/src/tv_shows/tv_shows_data_manager.dart'
    as _i16;
import '../../packages/core/core_general/lib/src/formatters/date_formatter.dart'
    as _i5;
import '../../packages/core/core_messaging/core_messaging_impl/lib/src/snack_bar/snack_bar_service_impl.dart'
    as _i10;
import '../../packages/core/core_messaging/core_messaging_interface/lib/core_messaging_interface.dart'
    as _i9;
import '../../packages/core/core_routing/core_routing_impl/lib/src/app_router_impl.dart'
    as _i19;
import '../../packages/core/core_routing/core_routing_interface/lib/core_routing_interface.dart'
    as _i18;
import '../../packages/core/core_show_rss/core_show_rss_impl/lib/src/helpers/xml_parser.dart'
    as _i11;
import '../../packages/core/core_show_rss/core_show_rss_impl/lib/src/show_rss_api_provider_impl.dart'
    as _i15;
import '../../packages/core/core_show_rss/core_show_rss_interface/lib/core_show_rss_interface.dart'
    as _i14;
import '../../packages/core/core_storage_provider/core_storage_provider_impl/lib/src/flags/flag_storage_provider_impl.dart'
    as _i13;
import '../../packages/core/core_storage_provider/core_storage_provider_interface/lib/core_storage_provider_interface.dart'
    as _i12;
import '../../packages/features/feature_episode/lib/feature_episode.dart'
    as _i25;
import '../../packages/features/feature_episode/lib/src/episode_viewmodel.dart'
    as _i24;
import '../../packages/features/feature_home/lib/src/home_viewmodel.dart'
    as _i27;
import '../../packages/features/feature_login/lib/src/login_viewmodel.dart'
    as _i28;
import '../../packages/features/feature_tv_show/lib/feature_tv_show.dart'
    as _i30;
import '../../packages/features/feature_tv_show/lib/src/tv_show_viewmodel.dart'
    as _i29;
import '../../packages/wrappers/wrapper_assets/wrapper_assets_impl/lib/src/assets_provider_impl.dart'
    as _i4;
import '../../packages/wrappers/wrapper_assets/wrapper_assets_interface/lib/wrapper_assets_interface.dart'
    as _i3;
import '../../packages/wrappers/wrapper_shared_preferences/wrapper_shared_preferences_impl/lib/src/shared_preferences_wrapper_impl.dart'
    as _i8;
import '../../packages/wrappers/wrapper_shared_preferences/wrapper_shared_preferences_interface/lib/wrapper_shared_preferences_interface.dart'
    as _i7;
import 'modules/third_party_modules.dart'
    as _i31; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.lazySingleton<_i3.AssetsProvider>(() => _i4.AssetsProviderImpl());
  gh.lazySingleton<_i5.DateFormatter>(() => _i5.DateFormatter());
  await gh.factoryAsync<_i6.SharedPreferences>(
      () => sharedPreferencesModule.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i7.SharedPreferencesWrapper>(
      () => _i8.SharedPreferencesWrapperImpl(get<_i6.SharedPreferences>()));
  gh.lazySingleton<_i9.SnackBarService>(() => _i10.SnackBarServiceImpl());
  gh.lazySingleton<_i11.XmlParser>(() => _i11.XmlParser());
  gh.lazySingleton<_i12.FlagStorageProvider>(
      () => _i13.FlagStorageProviderImpl(get<_i7.SharedPreferencesWrapper>()));
  gh.lazySingleton<_i14.ShowRssApiProvider>(() => _i15.ShowRssApiProviderImpl(
      get<_i11.XmlParser>(), get<_i3.AssetsProvider>()));
  gh.lazySingleton<_i16.TvShowsDataManager>(
      () => _i17.TvShowsDataManagerImpl(get<_i14.ShowRssApiProvider>()));
  gh.lazySingleton<_i18.AppRouter>(
      () => _i19.AppRouterImpl(get<_i12.FlagStorageProvider>()));
  gh.lazySingleton<_i20.AuthenticationProvider>(
      () => _i21.AuthenticationProviderImpl(get<_i12.FlagStorageProvider>()));
  gh.lazySingleton<_i22.DataManager>(
      () => _i23.DataManagerImpl(get<_i16.TvShowsDataManager>()));
  gh.factoryParam<_i24.EpisodeViewModel, _i25.EpisodeScreenParameters?,
          dynamic>(
      (_episodeScreenParameters, _) => _i24.EpisodeViewModel(
          _episodeScreenParameters,
          get<_i18.AppRouter>(),
          get<_i26.DataManager>()));
  gh.factory<_i27.HomeViewModel>(
      () => _i27.HomeViewModel(get<_i18.AppRouter>(), get<_i26.DataManager>()));
  gh.factory<_i28.LoginViewModel>(() => _i28.LoginViewModel(
      get<_i18.AppRouter>(),
      get<_i20.AuthenticationProvider>(),
      get<_i9.SnackBarService>()));
  gh.factoryParam<_i29.TvShowViewModel, _i30.TvShowScreenParameters?, dynamic>(
      (_tvShowScreenParameters, _) => _i29.TvShowViewModel(
          _tvShowScreenParameters,
          get<_i18.AppRouter>(),
          get<_i26.DataManager>()));
  return get;
}

class _$SharedPreferencesModule extends _i31.SharedPreferencesModule {}
