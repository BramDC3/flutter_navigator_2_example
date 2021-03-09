import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:flutter_navigator_2_example/packages/ui_components/lib/ui_components.dart';

import 'episode_card.dart';

class SectionBuilder extends StatelessWidget {
  final String label;
  final Stream<Iterable<TvShowEpisode>> tvShowEpisodesStream;

  const SectionBuilder({
    required this.label,
    required this.tvShowEpisodesStream,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Iterable<TvShowEpisode>>(
      stream: tvShowEpisodesStream,
      builder: (context, snapshot) {
        final data = snapshot.data;
        if (data == null || data.isEmpty) {
          return const SizedBox.shrink();
        }

        return _Section(
          label: label,
          episodes: data,
        );
      },
    );
  }
}

class _Section extends StatelessWidget {
  final String label;
  final Iterable<TvShowEpisode> episodes;

  const _Section({
    required this.label,
    required this.episodes,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionLabel(text: label),
        const SizedBox(height: AppDimensions.spacingVertical),
        _SectionBody(episodes: episodes),
      ],
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String text;

  const _SectionLabel({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final paddingHorizontal = MediaQuery.of(context).size.width * 0.05;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
      ),
      child: Text(
        text,
        style: AppTextStyles.sectionTitleStyle,
      ),
    );
  }
}

class _SectionBody extends StatelessWidget {
  final Iterable<TvShowEpisode> episodes;

  const _SectionBody({
    required this.episodes,
  });

  @override
  Widget build(BuildContext context) {
    const viewPortFraction = 0.9;
    final height = MediaQuery.of(context).size.width * viewPortFraction / 1.4;

    return SizedBox(
      height: height,
      child: PageView.builder(
        controller: PageController(viewportFraction: viewPortFraction),
        physics: const ClampingScrollPhysics(),
        itemCount: episodes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: AppDimensions.marginHorizontal,
              bottom: 3,
            ),
            child: EpisodeCard(episode: episodes.elementAt(index)),
          );
        },
      ),
    );
  }
}
