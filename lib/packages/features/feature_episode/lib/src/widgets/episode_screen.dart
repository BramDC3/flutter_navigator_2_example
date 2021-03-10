import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_general/lib/core_general.dart';
import 'package:flutter_navigator_2_example/packages/ui_components/lib/ui_components.dart';
import 'package:provider/provider.dart';

import '../episode_viewmodel.dart';

class EpisodeScreen extends StatelessWidget {
  final TvShowEpisode? episode;

  const EpisodeScreen({
    required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    final ep = episode;
    if (ep != null) {
      return _Scaffold(episode: ep);
    }

    final vm = Provider.of<EpisodeViewModel>(context);

    return StreamBuilder<TvShowEpisode?>(
      stream: vm.episode,
      builder: (context, snapshot) {
        final ep = snapshot.data;
        if (ep == null) {
          return const SizedBox.shrink();
        }

        return _Scaffold(episode: ep);
      },
    );
  }
}

class _Scaffold extends StatelessWidget {
  final TvShowEpisode episode;

  const _Scaffold({
    required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(title: episode.episodeTitle),
      body: _Body(episode: episode),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}

class _Body extends StatelessWidget {
  final TvShowEpisode episode;

  const _Body({
    required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<EpisodeViewModel>(context);

    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          Hero(
            tag: episode.episodeId,
            child: Image.asset(
              episode.imageUrl,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned.fill(
            child: _EpisodeInfo(episode: episode),
          ),
        ],
      ),
    );
  }
}

class _EpisodeInfo extends StatelessWidget {
  final TvShowEpisode episode;

  const _EpisodeInfo({
    required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<EpisodeViewModel>(context);
    final dateFormatter = Provider.of<DateFormatter>(context);

    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              episode.episodeTitle,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 4),
            Text(
              'Released on ${dateFormatter.formatToShortDate(episode.releaseDate)}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: vm.onShowAllEpisodesPressed,
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: const Text('Show all episodes'),
            ),
          ],
        ),
      ),
    );
  }
}
