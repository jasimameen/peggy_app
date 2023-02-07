import 'package:flutter/material.dart';
import 'package:peggy/presentation/core/constants/asset_constants.dart';

class ProfileAvathar extends CircleAvatar {
  const ProfileAvathar({Key? key, double? radius, Widget? child})
      : super(
          key: key,
          radius: radius,
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
          child: Text(text[0]),
          backgroundColor:
              backgroundColor ?? const Color.fromRGBO(249, 249, 249, 1),
        );
}
