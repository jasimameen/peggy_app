import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peggy/presentation/base/widgets/bottom_nav_bar.dart';
import 'package:peggy/presentation/home/home_screen.dart';
import 'package:peggy/presentation/widgets/comming_soon_screen.dart';

import 'widgets/app_drawer.dart';

class BaseScreen extends StatelessWidget {
  static const routeName = '/';
  const BaseScreen({super.key});

  final _pages = const [
    HomeScreen(),
    ComingSoonScreen(text: 'Pegaboards'),
    ComingSoonScreen(text: 'Notifications'),
    ComingSoonScreen(text: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer
      drawer: const AppDrawer(),

      // body
      body: SafeArea(
        child: Expanded(
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
