// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

import '../../packages/core/core_authentication/core_authentication_impl/lib/src/authentication_provider_impl.dart'
    as _i29;
import '../../packages/core/core_authentication/core_authentication_interface/lib/core_authentication_interface.dart'
    as _i28;
import '../../packages/core/core_data_manager/core_data_manager_impl/lib/src/data_manager_impl.dart'
    as _i31;
import '../../packages/core/core_data_manager/core_data_manager_impl/lib/src/tv_shows/tv_shows_data_manager_impl.dart'
    as _i23;
import '../../packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart'
    as _i35;
import '../../packages/core/core_data_manager/core_data_manager_interface/lib/src/data_manager.dart'
    as _i30;
import '../../packages/core/core_data_manager/core_data_manager_interface/lib/src/tv_shows/tv_shows_data_manager.dart'
    as _i22;
import '../../packages/core/core_general/lib/src/formatters/date_formatter.dart'
    as _i5;
import '../../packages/core/core_messaging/core_messaging_impl/lib/src/snack_bar/snack_bar_service_impl.dart'
    as _i12;
import '../../packages/core/core_messaging/core_messaging_interface/lib/core_messaging_interface.dart'
    as _i11;
import '../../packages/core/core_routing/core_auto_route/lib/core_auto_route.dart'
    as _i33;
import '../../packages/core/core_routing/core_auto_route/lib/src/guards/auth_guard.dart'
    as _i27;
import '../../packages/core/core_routing/core_navigator_1/core_navigator_1_impl/lib/src/app_router_impl.dart'
    as _i25;
import '../../packages/core/core_routing/core_navigator_1/core_navigator_1_interface/lib/core_navigator_1_interface.dart'
    as _i24;
import '../../packages/core/core_routing/core_navigator_2/core_navigator_2_impl/lib/src/app_route_information_parser_impl.dart'
    as _i14;
import '../../packages/core/core_routing/core_navigator_2/core_navigator_2_impl/lib/src/app_router_delegate_impl.dart'
    as _i26;
import '../../packages/core/core_routing/core_navigator_2/core_navigator_2_impl/lib/src/route_page_manager_impl.dart'
    as _i19;
import '../../packages/core/core_routing/core_navigator_2/core_navigator_2_impl/lib/src/route_parser_impl.dart'
    as _i7;
import '../../packages/core/core_routing/core_navigator_2/core_navigator_2_interface/lib/core_navigator_2_interface.dart'
    as _i6;
import '../../packages/core/core_routing/core_routing_shared/core_routing_shared_impl/lib/src/helpers/router_helper_impl.dart'
    as _i32;
import '../../packages/core/core_routing/core_routing_shared/core_routing_shared_impl/lib/src/providers/initial_route_provider_impl.dart'
    as _i18;
import '../../packages/core/core_routing/core_routing_shared/core_routing_shared_interface/lib/core_routing_shared_interface.dart'
    as _i17;
import '../../packages/core/core_show_rss/core_show_rss_impl/lib/src/helpers/xml_parser.dart'
    as _i13;
import '../../packages/core/core_show_rss/core_show_rss_impl/lib/src/show_rss_api_provider_impl.dart'
    as _i21;
import '../../packages/core/core_show_rss/core_show_rss_interface/lib/core_show_rss_interface.dart'
    as _i20;
import '../../packages/core/core_storage_provider/core_storage_provider_impl/lib/src/flags/flag_storage_provider_impl.dart'
    as _i16;
import '../../packages/core/core_storage_provider/core_storage_provider_interface/lib/core_storage_provider_interface.dart'
    as _i15;
import '../../packages/features/feature_episode/lib/src/episode_viewmodel.dart'
    as _i36;
import '../../packages/features/feature_home/lib/src/home_viewmodel.dart'
    as _i37;
import '../../packages/features/feature_login/lib/src/login_viewmodel.dart'
    as _i38;
import '../../packages/features/feature_tv_show/lib/src/tv_show_viewmodel.dart'
    as _i34;
import '../../packages/wrappers/wrapper_assets/wrapper_assets_impl/lib/src/assets_provider_impl.dart'
    as _i4;
import '../../packages/wrappers/wrapper_assets/wrapper_assets_interface/lib/wrapper_assets_interface.dart'
    as _i3;
import '../../packages/wrappers/wrapper_shared_preferences/wrapper_shared_preferences_impl/lib/src/shared_preferences_wrapper_impl.dart'
    as _i10;
import '../../packages/wrappers/wrapper_shared_preferences/wrapper_shared_preferences_interface/lib/wrapper_shared_preferences_interface.dart'
    as _i9;
import 'modules/third_party_modules.dart'
    as _i39; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.lazySingleton<_i3.AssetsProvider>(() => _i4.AssetsProviderImpl());
  gh.lazySingleton<_i5.DateFormatter>(() => _i5.DateFormatter());
  gh.lazySingleton<_i6.RouteParser>(() => _i7.RouteParserImpl());
  await gh.factoryAsync<_i8.SharedPreferences>(
      () => sharedPreferencesModule.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i9.SharedPreferencesWrapper>(
      () => _i10.SharedPreferencesWrapperImpl(get<_i8.SharedPreferences>()));
  gh.lazySingleton<_i11.SnackBarService>(() => _i12.SnackBarServiceImpl());
  gh.lazySingleton<_i13.XmlParser>(() => _i13.XmlParser());
  gh.lazySingleton<_i6.AppRouteInformationParser>(
      () => _i14.AppRouteInformationParserImpl(get<_i6.RouteParser>()));
  gh.lazySingleton<_i15.FlagStorageProvider>(
      () => _i16.FlagStorageProviderImpl(get<_i9.SharedPreferencesWrapper>()));
  gh.lazySingleton<_i17.InitialRouteProvider>(
      () => _i18.InitialRouteProviderImpl(get<_i15.FlagStorageProvider>()));
  gh.lazySingleton<_i6.RoutePageManager>(() => _i19.RoutePageManagerImpl(
      get<_i6.RouteParser>(), get<_i17.InitialRouteProvider>()));
  gh.lazySingleton<_i20.ShowRssApiProvider>(() => _i21.ShowRssApiProviderImpl(
      get<_i13.XmlParser>(), get<_i3.AssetsProvider>()));
  gh.lazySingleton<_i22.TvShowsDataManager>(
      () => _i23.TvShowsDataManagerImpl(get<_i20.ShowRssApiProvider>()));
  gh.lazySingleton<_i24.AppRouter>(
      () => _i25.AppRouterImpl(get<_i17.InitialRouteProvider>()));
  gh.lazySingleton<_i6.AppRouterDelegate>(
      () => _i26.AppRouterDelegateImpl(get<_i6.RoutePageManager>()));
  gh.lazySingleton<_i27.AuthGuard>(
      () => _i27.AuthGuard(get<_i15.FlagStorageProvider>()));
  gh.lazySingleton<_i28.AuthenticationProvider>(
      () => _i29.AuthenticationProviderImpl(get<_i15.FlagStorageProvider>()));
  gh.lazySingleton<_i30.DataManager>(
      () => _i31.DataManagerImpl(get<_i22.TvShowsDataManager>()));
  gh.lazySingleton<_i17.RouterHelper>(() => _i32.RouterHelperImpl(
      get<_i24.AppRouter>(),
      get<_i6.RoutePageManager>(),
      get<_i33.AppAutoRouter>()));
  gh.factoryParam<_i34.TvShowViewModel, String?, dynamic>((_showName, _) =>
      _i34.TvShowViewModel(
          _showName, get<_i17.RouterHelper>(), get<_i35.DataManager>()));
  gh.factoryParam<_i36.EpisodeViewModel, int?, _i35.TvShowEpisode?>(
      (_episodeId, _episode) => _i36.EpisodeViewModel(_episodeId, _episode,
          get<_i17.RouterHelper>(), get<_i35.DataManager>()));
  gh.factory<_i37.HomeViewModel>(() =>
      _i37.HomeViewModel(get<_i17.RouterHelper>(), get<_i35.DataManager>()));
  gh.factory<_i38.LoginViewModel>(() => _i38.LoginViewModel(
      get<_i17.RouterHelper>(),
      get<_i28.AuthenticationProvider>(),
      get<_i11.SnackBarService>()));
  return get;
}

class _$SharedPreferencesModule extends _i39.SharedPreferencesModule {}
