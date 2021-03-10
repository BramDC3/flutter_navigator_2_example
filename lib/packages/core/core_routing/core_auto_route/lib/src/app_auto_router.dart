import 'package:auto_route/auto_route.dart';
import 'package:flutter_navigator_2_example/packages/core/core_routing/core_routing_shared/core_routing_shared_interface/lib/core_routing_shared_interface.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_episode/lib/feature_episode.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_home/lib/feature_home.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_login/lib/feature_login.dart';
import 'package:flutter_navigator_2_example/packages/features/feature_tv_show/lib/feature_tv_show.dart';
import 'package:flutter_navigator_2_example/packages/ui_components/lib/ui_components.dart';

import 'guards/auth_guard.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'ScreenProvider,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(path: Routes.home, page: HomeScreenProvider, initial: true, guards: [AuthGuard]),
    AutoRoute<void>(path: Routes.login, page: LoginScreenProvider),
    AutoRoute<void>(path: Routes.tvShow, page: TvShowScreenProvider),
    AutoRoute<void>(path: Routes.episode, page: EpisodeScreenProvider),
    AutoRoute<void>(path: '*', page: UnknownScreenProvider),
  ],
)
class $AppAutoRouter {}
