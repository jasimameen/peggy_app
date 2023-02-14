import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/presentation/widgets/post_card.dart';


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
            itemBuilder: (context, index) => const PostCard(
              images: [AssetConstants.artwork1, AssetConstants.artwork1],
            ),
            separatorBuilder: (_, __) => UIConstants.divider,
            physics: const BouncingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}
