import 'package:flutter/material.dart';

class PeggyLogo extends StatelessWidget {
  /// Creates a widget that paints the Peggy logo.
  ///
  const PeggyLogo({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double? width;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: width != null
          ? Size(
              width!,
              (width! * 1).toDouble(), // height
            )
          : Size.zero,
      painter: PeggyLogoPainter(),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class PeggyLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6723357, size.height * 0.6642589);
    path_0.cubicTo(
        size.width * 0.9081179,
        size.height * 0.5846071,
        size.width * 0.8928107,
        size.height * 0.3268286,
        size.width * 0.8200982,
        size.height * 0.1941089);
    path_0.cubicTo(
        size.width * 0.7292518,
        size.height * 0.02829268,
        size.width * 0.5211714,
        size.height * 0.0002480661,
        size.width * 0.3655482,
        size.height * 0.05628714);
    path_0.cubicTo(
        size.width * -0.02811071,
        size.height * 0.1980429,
        size.width * 0.2192964,
        size.height * 0.9700000,
        size.width * 0.5279893,
        size.height * 0.9700000);
    path_0.cubicTo(
        size.width * 0.7397375,
        size.height * 0.9700000,
        size.width * 0.7038571,
        size.height * 0.7525625,
        size.width * 0.6723357,
        size.height * 0.6642589);
    path_0.close();
    path_0.moveTo(size.width * 0.6723357, size.height * 0.6642589);
    path_0.cubicTo(
        size.width * 0.5688089,
        size.height * 0.6992321,
        size.width * 0.4466018,
        size.height * 0.5691982,
        size.width * 0.5082393,
        size.height * 0.5077911);
    path_0.cubicTo(
        size.width * 0.5698750,
        size.height * 0.4463839,
        size.width * 0.6512196,
        size.height * 0.5943893,
        size.width * 0.6723357,
        size.height * 0.6642589);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04464286;
    paint0Stroke.color = const Color(0xff141414).withOpacity(1.0);
    paint0Stroke.strokeCap = StrokeCap.round;
    paint0Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint0Stroke);

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
