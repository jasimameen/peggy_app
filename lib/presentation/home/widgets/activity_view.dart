import 'package:flutter/material.dart';
import '../../core/constants/pallette.dart';
import 'article_card.dart';
import 'custom_list_tile.dart';
import '../../widgets/post_card.dart';

import '../../core/constants/constants.dart';
import '../../widgets/horizontal_scoll_view.dart';

class HomeActivityTabView extends StatelessWidget {
  const HomeActivityTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      // TODO: add pagination and move listview to listview.builder
      children: [
        // post card
        // const PostCard(),

        // // peggy curation
        // HorizontalScrollView(
        //   viewHeight: 60,
        //   title: 'Peggy Curation',
        //   itemBuilder: (context, index) =>
        //       const Icon(Icons.flutter_dash, size: 60),
        //   itemCount: 10,
        // ),

        // // hadpicked galleris and proven artists
        // ...Dummy.homeActivityListTiles,

        // articles
        HorizontalScrollView(
          title: 'Articles',
          viewHeight: 285,
          itemBuilder: (context, index) => const ArticleCard(),
          itemCount: 10,
        ),

        // pegacast

        // pegaboards
      ],
    );
  }
}
