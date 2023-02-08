import 'package:flutter/material.dart';
import 'widgets/bottom_nav_bar.dart';
import '../home/home_screen.dart';
import '../widgets/comming_soon_screen.dart';

import 'widgets/app_drawer.dart';

class BaseScreen extends StatelessWidget {
  static const routeName = '/';
  BaseScreen({super.key});

  final _pages = const [
    HomeScreen(),
    ComingSoonScreen(text: 'Pegaboards'),
    ComingSoonScreen(text: 'Notifications'),
    ComingSoonScreen(text: 'Profile'),
  ];

  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer
      drawer: const AppDrawer(),

      // body
      body: SafeArea(
        child: GestureDetector(
          onHorizontalDragDown: (_) {
            _key.currentState!.isDrawerOpen
                ? Scaffold.of(context).closeDrawer()
                : Scaffold.of(context).openDrawer();
          },
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
