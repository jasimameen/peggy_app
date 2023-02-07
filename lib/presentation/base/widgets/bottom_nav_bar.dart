import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int index, _) => BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) => indexChangeNotifier.value = newIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          NavBarItem(label: 'Home', iconData: Icons.color_lens), // Home
          NavBarItem(
              label: 'Pegaboards', iconData: Icons.favorite), // PegaBoards
          NavBarItem(
              label: 'Notifications',
              iconData: Icons.notifications), // Notifications
          NavBarItem.custom(
              label: 'Profile', icon: const CircleAvatar()), // Profile
        ],
      ),
    );
  }
}

class NavBarItem extends BottomNavigationBarItem {
  NavBarItem({required String label, required IconData iconData})
      : super(
            label: label,
            icon: Icon(
              iconData,
              color: Colors.black,
            ));

  NavBarItem.custom({required String label, required Widget icon})
      : super(label: label, icon: icon);
}
