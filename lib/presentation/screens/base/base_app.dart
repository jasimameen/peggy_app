import 'package:flutter/material.dart';
import 'package:peggy/presentation/core/utils/utils.dart';
import 'package:peggy/presentation/screens/notifications/notifications_screen.dart';
import 'package:peggy/presentation/screens/pegboards/pegboards_screen.dart';
import 'package:peggy/presentation/screens/profile/profile_screen.dart';
import 'widgets/bottom_nav_bar.dart';
import '../home/home_screen.dart';
import '../../widgets/comming_soon_screen.dart';

import 'widgets/app_drawer.dart';

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