import 'package:flutter/material.dart';

class SomPage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => const SomPage());
  const SomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Semantics(
          label: 'Red Circle',
          onSetText: (text) => 'text hell',
          child: CustomPaint(painter: MCirclePainter()),
        ),
      ),
    );
  }
}

class MCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset.zero, 100, paint);
  }

  @override
  bool shouldRepaint(MCirclePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(MCirclePainter oldDelegate) => false;
}
