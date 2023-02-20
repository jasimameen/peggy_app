import 'package:flutter/material.dart';

import '../../features/home/presentation/widgets/custom_list_tile.dart';
import '../../features/notifications/presentation/pages/notifications_screen.dart';
import '../../core/enums/user_enum.dart';
import 'asset_constants.dart';
import 'ui_constants.dart';

/// contains dummy data for this app
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

  static final pegaboardimages = <String
  >[
    'https://indianartzone.com/pub/media/mgs_blog/1/4/14b.jpg',
    'https://www.artun.ee/app/uploads/2022/02/01_MACA_EKA_Photo_Joosep_Kivima%CC%88e-900x900.jpg',
    'https://worlduniversityofdesign.ac.in/assets/images/bgs/contempary-art-practice-banner.jpg',
    'https://indianartideas.in/articleimages/1544530226what-is-contemporary-art.JPG',
  ];

  static List notificateSuggessions = [
    const NotifyTileUser('Andrew Most', UserType.collecter),
    const NotifyTileUser('Ivana S', UserType.collecter),
    const NotifyTileUser('Vincent Coleman', UserType.collecter),
    const NotifyTileUser('junghun lee', UserType.collecter),
    const NotifyTileUser('Adam Hijleh', UserType.collecter),
    const NotifyTileUser('Cat D', UserType.collecter),
  ];

  // static const _imagePath =
  //     'https://firebasestorage.googleapis.com/v0/b/peggy-1b708.appspot.com/o/posts%2F';

  // static final postmodels = [
  //   PostModel(
  //       id: 1,
  //       user: 'John',
  //       image:
  //           '${_imagePath}1.jpg?alt=media&token=7ae11a94-418c-4827-ac7e-bd3238c0e09a',
  //       createdAt: DateTime.now()),
  //   PostModel(
  //       id: 2,
  //       user: 'John',
  //       image:
  //           '${_imagePath}2.jpg?alt=media&token=ae477792-529a-4066-af6a-bfec22c1eda6',
  //       createdAt: DateTime.now()),
  //   PostModel(
  //       id: 3,
  //       user: 'John',
  //       image:
  //           '${_imagePath}3.jpg?alt=media&token=786d3362-2346-47be-b187-da442ce09925',
  //       createdAt: DateTime.now()),
  //   PostModel(
  //       id: 4,
  //       user: 'John',
  //       image:
  //           '${_imagePath}4.jpg?alt=media&token=05af5866-2e00-498a-830f-0d30664210b8',
  //       createdAt: DateTime.now()),
  //   PostModel(
  //       id: 5,
  //       user: 'John',
  //       image:
  //           '${_imagePath}5.jpg?alt=media&token=32cba421-3178-43ac-a724-f131c67dae21',
  //       createdAt: DateTime.now()),
  //   PostModel(
  //       id: 6,
  //       user: 'John',
  //       image:
  //           '${_imagePath}6.jpg?alt=media&token=7d205be7-92da-423f-8d6d-d1b4699bb9d5',
  //       createdAt: DateTime.now()),
  //   PostModel(
  //       id: 7,
  //       user: 'John',
  //       image:
  //           '${_imagePath}7.jpg?alt=media&token=58fa8eef-6125-4ae3-b924-038b95645155',
  //       createdAt: DateTime.now()),
  //   PostModel(
  //       id: 8,
  //       user: 'John',
  //       image:
  //           '${_imagePath}8.jpg?alt=media&token=ec373df5-0540-4769-8b33-c9f7eb61581c',
  //       createdAt: DateTime.now()),
  //   PostModel(
  //       id: 9,
  //       user: 'John',
  //       image:
  //           '${_imagePath}9.jpg?alt=media&token=065f8fae-2af4-41bb-a5fe-e1f924abe59b',
  //       createdAt: DateTime.now()),
  //   PostModel(
  //       id: 10,
  //       user: 'John',
  //       image:
  //           '${_imagePath}10.jpg?alt=media&token=242aa27a-6da4-4550-ad2d-f393d0cf7e14',
  //       createdAt: DateTime.now()),
  //   PostModel(
  //       id: 11,
  //       user: 'John',
  //       image:
  //           '${_imagePath}11.jpg?alt=media&token=c896b4be-0b9d-47a9-84b4-67771aa49b80',
  //       createdAt: DateTime.now()),
  // ];
}