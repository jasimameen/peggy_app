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
        items: [
          NavBarItem(iconData: Icons.color_lens), // Home
          NavBarItem(iconData: Icons.favorite), // favorates
          NavBarItem(iconData: Icons.notifications), // Notifications
          NavBarItem.custom(icon: const CircleAvatar()), // Profile
        ],
      ),
    );
  }
}

class NavBarItem extends BottomNavigationBarItem {
  NavBarItem({required IconData iconData})
      : super(
            icon: Icon(
          iconData,
          color: Colors.black,
        ));

  NavBarItem.custom({required Widget icon}) : super(icon: icon);
}
