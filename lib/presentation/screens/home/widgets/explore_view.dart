import 'package:flutter/material.dart';
import 'package:peggy/presentation/widgets/post_card.dart';

import '../../../core/constants/constants.dart';
import 'filter_bar.dart';

class HomeExploreTabView extends StatelessWidget {
  const HomeExploreTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // filterbar
        const FilterBar(),

        // post cards
        Flexible(
          child: ListView.separated(
            itemCount: 20,
            itemBuilder: (context, index) => const PostCard(),
            separatorBuilder: (_, __) => UIConstants.divider,
            physics: const BouncingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}
