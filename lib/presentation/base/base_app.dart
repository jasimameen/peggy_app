import 'package:flutter/material.dart';
import 'package:peggy/presentation/base/widgets/bottom_nav_bar.dart';
import 'package:peggy/presentation/home/home_screen.dart';
import 'package:peggy/presentation/widgets/comming_soon_screen.dart';

class BaseScreen extends StatelessWidget {
  BaseScreen({super.key});

  final _pages = [
    const HomeScreen(),
    const ComingSoonScreen(text: 'Pegaboards'),
    const ComingSoonScreen(text: 'Notifications'),
    const ComingSoonScreen(text: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) => _pages[index],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
