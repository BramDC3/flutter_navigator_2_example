import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
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
      body: const _Body(),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<EpisodeViewModel>(context);

    return Center(
      child: MaterialButton(
        onPressed: vm.onShowAllEpisodesPressed,
        child: const Text('Show all episodes'),
      ),
    );
  }
}
