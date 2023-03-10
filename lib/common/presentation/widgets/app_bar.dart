import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import '../../../injection.dart';
import '../../constants/constants.dart';
import '../../../core/navigation/app_router.gr.dart';
import '../../../core/utils/utils.dart';
import 'profile_avathar.dart';

class CustomAppBar extends AppBar {
  /// default appbar
  CustomAppBar({
    super.key,
    PreferredSizeWidget? bottom,
    String? label,
    bool? centerTitle,
    Widget? trailing,
  }) : super(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,

          // menu icon
          leading: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.menu, size: 28),
                onPressed: () => Utils.openDrawer(),
              ),
            ],
          ),

          // center logo
          centerTitle: centerTitle ?? label != null ? false : true,
          title: label != null
              ? Text(
                  label,
                  style: const TextStyle(fontSize: 12),
                )
              : Lottie.asset(
                  LottiFiles.peggyLogo,
                  height: 25,
                  width: 25,
                  repeat: false,
                  errorBuilder: (_, __, ___) => Image.asset(
                    AssetConstants.logo,
                    height: 25,
                    width: 25,
                  ),
                ),

          // trailing or search icon (default)
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: trailing ??
                  IconButton(
                    icon: const Icon(
                      CupertinoIcons.search,
                      size: 28,
                    ),
                    onPressed: () async {
                      await sl<AppRouter>().push(const SearchScreen());
                      log('hello');
                    },
                  ),
            ),
          ],

          // bottom
          bottom: bottom,
        );

  factory CustomAppBar.withTabBar({
    Key? key,
    required List<Widget> tabs,
    bool showHeader = true,
  }) =>
      CustomAppBar(
          key: key,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // title
                if (showHeader) const _TitleSection(),

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
            UIConstants.height3,
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

/// cupertino

class CustomCupertinoNabBar extends CupertinoNavigationBar {
  CustomCupertinoNabBar({super.key, required BuildContext context})
      : super(
          leading: IconButton(
            onPressed: () => sl<AppRouter>().pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          middle: SizedBox.expand(
            child: CupertinoSearchTextField(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              prefixIcon: const SizedBox(),
            ),
          ),
        );
}
