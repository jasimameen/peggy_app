import 'package:flutter/material.dart';
import '../core/constants/constants.dart';

class ProfileAvathar extends CircleAvatar {
  const ProfileAvathar(
      {Key? key, double? radius, Color? backgroundColor, Widget? child})
      : super(
          key: key,
          radius: radius,
          backgroundColor: backgroundColor ?? Pallete.offWhite,
          child: child,
        );

  ProfileAvathar.image({
    Key? key,
    required String image,
    double? radius,
  })  : assert(image.isNotEmpty),
        super(
          key: key,
          radius: radius,
          foregroundImage: AssetImage(image),
          onForegroundImageError: (_, __) => const ProfileAvathar(),
        );

  ProfileAvathar.byName(
    String text, {
    Key? key,
    double? radius,
    Color? backgroundColor,
  })  : assert(text.isNotEmpty),
        super(
          key: key,
          radius: radius,
          child: Text(
            text[0],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'liberator',
            ),
          ),
          backgroundColor: backgroundColor ?? Pallete.offWhite,
        );
}
