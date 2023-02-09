import 'package:flutter/material.dart';
import '../../../widgets/board_card.dart';
import 'article_card.dart';
import 'audio_card.dart';
import '../../../widgets/post_card.dart';

import '../../../core/constants/constants.dart';
import '../../../widgets/horizontal_scoll_view.dart';

class HomeActivityTabView extends StatelessWidget {
  const HomeActivityTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      // TODO: add pagination and move listview to listview.builder
      children: [
        // post card
        const PostCard(),

        // peggy curation
        HorizontalScrollView(
          viewHeight: 60,
          title: 'Peggy Curation',
          itemBuilder: (context, index) =>
              const Icon(Icons.flutter_dash, size: 60),
          itemCount: 10,
        ),

        // hadpicked galleris and proven artists
        ...Dummy.homeActivityListTiles,

        // articles
        HorizontalScrollView(
          title: 'Articles',
          viewHeight: 285,
          itemBuilder: (context, index) => const ArticleCard(),
          itemCount: 10,
        ),

        // pegacast
        HorizontalScrollView(
          viewHeight: 110,
          title: 'Pegacasts',
          viewAllTrailing: true,
          itemBuilder: (context, index) => const AudioCard(),
          itemCount: 10,
        ),

        // pegaboards
        HorizontalScrollView(
          viewHeight: 160,
          title: 'Pegboards',
          itemBuilder: (context, index) => PegBoardCard(
            title: 'floral still life $index',
          ),
          itemCount: 10,
        ),
      ],
    );
  }
}
