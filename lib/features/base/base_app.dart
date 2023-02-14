import 'package:flutter/material.dart';

import '../../core/presentation/utils/utils.dart';
import '../home/presentation/pages/home_screen.dart';
import '../notifications/presentation/pages/notifications_screen.dart';
import '../pegboards/pegboards_screen.dart';
import '../profile/pages/profile_screen.dart';
import 'widgets/app_drawer.dart';
import 'widgets/bottom_nav_bar.dart';

class BaseScreen extends StatelessWidget {
  static const routeName = '/';
  const BaseScreen({super.key});

  final _pages = const [
    HomeScreen(),
    PegboardScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Utils.drawerKey,

      // drawer
      drawer: const AppDrawer(),

      // body
      body: SafeArea(
        child: GestureDetector(
          // onHorizontalDragCancel: () {
          //   Utils.openDrawer();
          // },
          child: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) => _pages[index],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
