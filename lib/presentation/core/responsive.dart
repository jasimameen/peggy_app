import 'dart:developer';

import 'package:flutter/material.dart';
import 'constants/mockups.dart';
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
    final textScaleFactor = (Mockups.mockupWidth / width) * 0.5;

    log('device dp: ${MediaQuery.of(context).devicePixelRatio * 160}');
    log('scale: $scale');

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        devicePixelRatio: 420 / width,
        textScaleFactor: textScaleFactor,
      ),
      child: PixelPerfect(
        assetPath: Mockups.profile,
        initOpacity: .3,
        scale: scale,
        child: child,
      ),
    );
  }
}
