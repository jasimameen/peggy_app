// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:peggy/core/constants/pallette.dart';

class ProfileButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? textColor;

  const ProfileButton({
    Key? key,
    required this.label,
    this.onTap,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      margin: const EdgeInsets.symmetric(vertical: 23),
      decoration: BoxDecoration(
        border: Border.all(color: Pallete.offWhite),
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: textColor, fontSize: 12),
        ),
      ),
    );
  }
}
