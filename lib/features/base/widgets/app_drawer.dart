import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../common/constants/constants.dart';
import '../../../common/presentation/widgets/profile_avathar.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  final footerIcons = const [];

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileAvathar.byName('J', radius: 50),
            const DrawerHeader(
              child: Text("Hei Artists"),
            ),
            UIConstants.divider,

            //
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.square_grid_2x2_fill),
              label: const Text("Dashboard"),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.settings),
              label: const Text("Settings"),
            ),
            UIConstants.divider,

            //
            const _SubTitle('About'),
            const _SubTitle('Contact Peggy'),
            const _SubTitle('Claim Artwork'),

            // blanck space
            UIConstants.spacer,

            // invite button
            const DrawerInviteButton(),

            UIConstants.divider,

            // footer
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                FaIcon(FontAwesomeIcons.instagram, color: Colors.black),
                FaIcon(FontAwesomeIcons.facebook, color: Colors.black),
                FaIcon(FontAwesomeIcons.twitter, color: Colors.black),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class DrawerInviteButton extends StatelessWidget {
  const DrawerInviteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Pallete.offGreen,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(CupertinoIcons.gift_fill, color: Pallete.offWhite, size: 30),
          Text('You have 2 Invites!'),
        ],
      ),
    );
  }
}

class _SubTitle extends Text {
  const _SubTitle(super.data)
      : super(style: const TextStyle(color: Colors.grey));
}
