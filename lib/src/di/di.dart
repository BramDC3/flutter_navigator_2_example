import 'package:flutter_navigator_2_example/packages/core/core_routing/core_auto_route/lib/core_auto_route.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final di = GetIt.instance;

@InjectableInit()
Future<void> initDependencies() async {
  di.registerLazySingleton<AppAutoRouter>(() => AppAutoRouter(authGuard: di.get<AuthGuard>()));

  await $initGetIt(di);
}
