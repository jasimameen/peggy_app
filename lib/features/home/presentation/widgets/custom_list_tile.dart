// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:peggy/core/presentation/widgets/profile_avathar.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const CustomListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // Tile icon
      leading: ProfileAvathar(
        radius: 20,
        backgroundColor: const Color.fromARGB(255, 233, 230, 230),
        child: Icon(icon, color: Colors.black),
      ),

      // title
      title: Text(
        title,
        style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
      ),

      // subtitle or description
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 11),
      ),
    );
  }
}
