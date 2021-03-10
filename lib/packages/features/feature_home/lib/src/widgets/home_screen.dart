import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_example/packages/ui_components/lib/ui_components.dart';
import 'package:provider/provider.dart';

import '../home_viewmodel.dart';
import 'body/section_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BasicAppBar(title: 'Personal overview'),
      body: _Body(),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          vertical: AppDimensions.marginVertical,
        ),
        children: const [
          _RecentPersonalEpisodes(),
          SizedBox(height: AppDimensions.spacingVerticalLarge),
          _UpcomingPersonalEpisodes(),
        ],
      ),
    );
  }
}

class _RecentPersonalEpisodes extends StatelessWidget {
  const _RecentPersonalEpisodes();

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<HomeViewModel>(context);

    return SectionBuilder(
      label: 'Recent episodes',
      tvShowEpisodesStream: vm.recentEpisodes,
    );
  }
}

class _UpcomingPersonalEpisodes extends StatelessWidget {
  const _UpcomingPersonalEpisodes();

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<HomeViewModel>(context);

    return SectionBuilder(
      label: 'Upcoming episodes',
      tvShowEpisodesStream: vm.upcomingEpisodes,
    );
  }
}
