import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  fun() => SvgPicture.asset('assetName');

  ProfileAvathar.image({
    Key? key,
    required String image,
    double? radius,
  })  : assert(image.isNotEmpty),
        super(
          key: key,
          radius: radius,
          backgroundColor: const Color.fromARGB(255, 219, 216, 216),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: image.endsWith('.svg')
                ? SvgPicture.asset(image)
                : Image.asset(image),
          ),
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
