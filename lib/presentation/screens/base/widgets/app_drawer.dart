import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../widgets/profile_avathar.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        ProfileAvathar.byName('J', radius: 50),
        const DrawerHeader(child: Text("Hei Artists")),
        const Divider(),
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
        const Divider(),
        const Text('About')
      ],
    ));
  }
}
