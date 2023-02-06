// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:peggy/presentation/core/constants.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

class Responsive extends StatelessWidget {
  final Widget child;
  const Responsive({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    
    final scale = Mockups.mockupWidth / width;
    final textScaleFactor = width / Mockups.mockupWidth;

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaleFactor: textScaleFactor,
      ),
      child: PixelPerfect(
        assetPath: Mockups.homeActivity,
        scale: scale,
        child: child,
      ),
    );
  }
}
