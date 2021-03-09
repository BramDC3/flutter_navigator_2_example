import 'package:flutter_navigator_2_example/packages/wrappers/wrapper_assets/wrapper_assets_interface/lib/wrapper_assets_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AssetsProvider)
class AssetsProviderImpl implements AssetsProvider {
  @override
  String get recentEpisodes => 'assets/episodes/recent_episodes.xml';

  @override
  String get upcomingEpisodes => 'assets/episodes/upcoming_episodes.xml';
}
