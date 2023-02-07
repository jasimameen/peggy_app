import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:peggy/presentation/core/constants/asset_constants.dart';
import 'package:peggy/presentation/core/constants/ui_constants.dart';
import 'package:peggy/presentation/widgets/profile_avathar.dart';

class CustomAppBar extends AppBar {
  /// default appbar
  CustomAppBar({Key? key, PreferredSizeWidget? bottom})
      : super(
          key: key,

          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,

          // menu icon
          leading: const Icon(Icons.menu, size: 28),

          // center logo
          centerTitle: true,
          title: SvgPicture.asset(
            AssetConstants.logo,
            height: 25,
            width: 25,
          ),

          // search icon
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                CupertinoIcons.search,
                size: 28,
              ),
            ),
          ],

          // bottom
          bottom: bottom,
        );

  factory CustomAppBar.withTabBar({Key? key, required List<Widget> tabs}) =>
      CustomAppBar(
          key: key,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // title
                const _TitleSection(),

                // tab bar
                SizedBox(
                  height: 57,
                  child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.black,
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.w300, fontFamily: 'Raleway'),
                    tabs: tabs,
                  ),
                ),
              ],
            ),
          ));
}

class _TitleSection extends StatelessWidget {
  const _TitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      child: ListTile(
        // welcome text
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome,',
              style: TextStyle(color: Colors.grey, fontSize: 11),
            ),
            UIConstants.height5,
            Text(
              'Jasim',
              style: TextStyle(fontSize: 22),
            )
          ],
        ),

        // profile icon
        trailing: ProfileAvathar.byName(
          'J',
          radius: 28.5,
        ),
      ),
    );
  }
}
