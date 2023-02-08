import 'package:flutter/material.dart';

import '../../home/widgets/custom_list_tile.dart';
import 'ui_constants.dart';

class Dummy {
  static const homeActivityListTiles = <Widget>[
     CustomListTile(
          icon: Icons.filter_frames,
          title: 'Hand-picked Galleries',
          subtitle:
              '''Peggy has partnered with 30 contemporary art\ngalleries from around the world to bring you the\nmost sought-after art on the market''',
        ),

        UIConstants.divider,

         CustomListTile(
          icon: Icons.color_lens,
          title: 'Proven Artists',
          subtitle:
              'Featuring artist that push the boundaries of contambery art and have appeared in top musemas around the world. All artworks is orilginal and made by highly aclamed artists.',
        ),
  ];
}
