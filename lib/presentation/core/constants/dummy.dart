import 'package:flutter/material.dart';
import 'package:peggy/core/enums/user_enum.dart';
import 'package:peggy/presentation/screens/notifications/notifications_screen.dart';

import '../../screens/home/widgets/custom_list_tile.dart';
import 'asset_constants.dart';
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

  static final pegaboardimages = <Widget>[
    Image.asset(AssetConstants.artwork1, fit: BoxFit.cover),
    Image.asset(AssetConstants.artwork1, fit: BoxFit.cover),
    Image.asset(AssetConstants.artwork1, fit: BoxFit.cover),
    Image.asset(AssetConstants.artwork1, fit: BoxFit.cover),
  ];

  static List notificateSuggessions = [
    const NotifyTileUser('Andrew Most', UserType.collecter),
    const NotifyTileUser('Ivana S', UserType.collecter),
    const NotifyTileUser('Vincent Coleman', UserType.collecter),
    const NotifyTileUser('junghun lee', UserType.collecter),
    const NotifyTileUser('Adam Hijleh', UserType.collecter),
    const NotifyTileUser('Cat D', UserType.collecter),
  ];
}
