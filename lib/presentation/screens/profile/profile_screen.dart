import 'package:flutter/material.dart';
import 'package:peggy/presentation/core/constants/asset_constants.dart';
import 'package:peggy/presentation/core/constants/pallette.dart';
import 'package:peggy/presentation/core/constants/ui_constants.dart';
import 'package:peggy/presentation/screens/profile/widgets/profile_rec_button.dart';
import 'package:peggy/presentation/widgets/app_bar.dart';
import 'package:peggy/presentation/widgets/horizontal_scoll_view.dart';
import 'package:peggy/presentation/widgets/profile_avathar.dart';

import '../../widgets/board_card.dart';
import 'widgets/artist_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: '@leskeboy',
        trailing: const Icon(Icons.more_vert),
      ),

      // body
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* <------ Profile Header -------->
              // header icon
              ProfileAvathar.byName('C', radius: 40),

              // user name
              const Text(
                'Jasim Ameen',
                style: TextStyle(
                  fontSize: 24.5,
                  fontFamily: 'Verdana',
                  fontWeight: FontWeight.w300,
                ),
              ),

              // buttons editprofile, ...
              Row(
                children: const [
                  Expanded(child: ProfileButton(label: 'Pegboards')),
                  Expanded(
                    child: ProfileButton(
                      label: 'Edit Profile',
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),

              // profile statistics
              Container(
                height: 70,
                color: const Color.fromARGB(139, 233, 230, 230),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StatsDataVert(title: 'Followers', count: 0),
                    _vertDivider,
                    StatsDataVert(title: 'Following', count: 2),
                    _vertDivider,
                    StatsDataVert(title: 'Collected', count: 10),
                  ],
                ),
              ),

              UIConstants.height20,

              //* <---------- Profile Sections  ------------->
              // artists pegboarded
              HorizontalScrollView(
                viewHeight: 150,
                title: 'Artists Pegboarded',
                itemBuilder: (context, index) => const ArtistCard(),
                itemCount: 10,
              ),

              UIConstants.divider,

              // pegaboards
              HorizontalScrollView(
                viewHeight: 160,
                title: 'Pegboards',
                viewAllTrailing: true,
                itemBuilder: (context, index) =>
                    const PegBoardCard(title: 'Hike Pegboard'),
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final _vertDivider = Container(width: 1, height: 35, color: Colors.grey[350]);

class StatsDataVert extends Column {
  StatsDataVert({super.key, required String title, required int count})
      : super(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 10),
            ),
            UIConstants.height5,
            Text(
              '$count',
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        );
}
