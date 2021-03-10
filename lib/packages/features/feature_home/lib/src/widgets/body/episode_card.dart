import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/core/core_data_manager/core_data_manager_interface/lib/core_data_manager_interface.dart';
import 'package:flutter_navigator_2_example/packages/core/core_general/lib/core_general.dart';
import 'package:flutter_navigator_2_example/packages/ui_components/lib/ui_components.dart';
import 'package:provider/provider.dart';

import '../../home_viewmodel.dart';

class EpisodeCard extends StatelessWidget {
  final TvShowEpisode episode;

  const EpisodeCard({
    required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppElevations.cardElevation,
      margin: EdgeInsets.zero,
      color: AppColors.cardBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppDimensions.cardBorderRadius,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: _EpisodeCardImage(episode: episode),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: _EpisodeCardBodyContainer(episode: episode),
          ),
          Positioned.fill(
            child: _EpisodeCardRipple(episode: episode),
          ),
        ],
      ),
    );
  }
}

class _EpisodeCardImage extends StatelessWidget {
  final TvShowEpisode episode;

  const _EpisodeCardImage({
    required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        AppDimensions.cardBorderRadius,
      ),
      child: Hero(
        tag: episode.episodeId,
        child: Image.asset(
          episode.imageUrl,
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }
}

class _EpisodeCardBodyContainer extends StatelessWidget {
  final TvShowEpisode episode;

  const _EpisodeCardBodyContainer({
    required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(
        AppDimensions.marginHorizontal,
        AppDimensions.marginVertical,
        48,
        AppDimensions.marginVertical,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(AppDimensions.cardBorderRadius),
          bottomRight: Radius.circular(AppDimensions.cardBorderRadius),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: AppDimensions.shadowBlurRadius,
          ),
        ],
      ),
      child: _EpisodeCardBody(episode: episode),
    );
  }
}

class _EpisodeCardBody extends StatelessWidget {
  final TvShowEpisode episode;

  const _EpisodeCardBody({
    required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormatter = Provider.of<DateFormatter>(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          episode.episodeTitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.cardTitleStyle,
        ),
        const SizedBox(height: AppDimensions.cardTitleSubtitleSpacing),
        Text(
          dateFormatter.formatToShortDate(episode.releaseDate),
          maxLines: 1,
          style: AppTextStyles.cardSubtitleStyle,
        ),
      ],
    );
  }
}

class _EpisodeCardRipple extends StatelessWidget {
  final TvShowEpisode episode;

  const _EpisodeCardRipple({
    required this.episode,
  });

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<HomeViewModel>(context);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => vm.onTvShowEpisodePressed(episode),
        splashColor: AppColors.rippleSplashColor,
        highlightColor: AppColors.rippleHighlightColor,
        borderRadius: BorderRadius.circular(
          AppDimensions.cardBorderRadius,
        ),
      ),
    );
  }
}
