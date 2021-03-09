import 'package:flutter/services.dart';
import 'package:flutter_navigator_2_example/packages/core/core_show_rss/core_show_rss_impl/lib/src/helpers/xml_parser.dart';
import 'package:flutter_navigator_2_example/packages/core/core_show_rss/core_show_rss_interface/lib/core_show_rss_interface.dart';
import 'package:flutter_navigator_2_example/packages/wrappers/wrapper_assets/wrapper_assets_interface/lib/wrapper_assets_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ShowRssApiProvider)
class ShowRssApiProviderImpl implements ShowRssApiProvider {
  static final _episodeInfoKeys = List<String>.unmodifiable(<String>[
    'title',
    'pubDate',
    'tv:show_id',
    'tv:show_name',
    'tv:episode_id',
  ]);

  final XmlParser _xmlParser;
  final AssetsProvider _assetsProvider;

  ShowRssApiProviderImpl(
    this._xmlParser,
    this._assetsProvider,
  );

  @override
  Future<Iterable<TvShowEpisodeModel>> getPersonalRecentEpisodes() async {
    final rawXml = await rootBundle.loadString(_assetsProvider.recentEpisodes);
    final xml = _xmlParser.parseXmlData(rawXml, _episodeInfoKeys);

    return xml.map((json) => TvShowEpisodeModel.fromJson(json));
  }

  @override
  Future<Iterable<TvShowEpisodeModel>> getPersonalUpcomingEpisodes() async {
    final rawXml = await rootBundle.loadString(_assetsProvider.upcomingEpisodes);
    final xml = _xmlParser.parseXmlData(rawXml, _episodeInfoKeys);

    return xml.map((json) => TvShowEpisodeModel.fromJson(json));
  }

  @override
  Future<Iterable<TvShowEpisodeModel>> getShowRecentEpisodes(String showName) async {
    final episodes = await getPersonalRecentEpisodes();
    return episodes.where((ep) => ep.showName == showName);
  }

  @override
  Future<Iterable<TvShowEpisodeModel>> getShowUpcomingEpisodes(String showName) async {
    final episodes = await getPersonalUpcomingEpisodes();
    return episodes.where((ep) => ep.showName == showName);
  }

  @override
  Future<TvShowEpisodeModel> getEpisodeById(int episodeId) async {
    final recentEpisodes = await getPersonalRecentEpisodes();
    final upcomingEpisodes = await getPersonalUpcomingEpisodes();
    final allEpisodes = [...recentEpisodes, ...upcomingEpisodes];

    return allEpisodes.firstWhere((ep) => ep.episodeId == '$upcomingEpisodes');
  }
}
