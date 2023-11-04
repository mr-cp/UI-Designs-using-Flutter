import 'dart:math' as math;

import 'package:dialer_lockscreen_ui/constants.dart';
import 'package:dialer_lockscreen_ui/utils.dart';
import 'package:flutter/material.dart';

class DialerForegroundPainter extends CustomPainter {
  const DialerForegroundPainter(this.numberRadiusFromCenter);

  final double numberRadiusFromCenter;
  @override
  void paint(Canvas canvas, Size size) {
    const ringWidth = Constants.ringWidth;

    final paint = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = ringWidth - Constants.ringPadding * 2
      ..style = PaintingStyle.stroke;

    canvas
      ..saveLayer(Rect.largest, paint)
      ..drawArc(
        Rect.fromCircle(
          center: size.centerOffset,
          radius: size.width / 2 - ringWidth / 2,
        ),
        Constants.firstDialNumberPosition,
        Constants.maxDialerSweepAngle,
        false,
        paint,
      );

    for (var i = 0; i < 10; i++) {
      final offset = Offset.fromDirection(
          math.pi * (-30 - i * 30) / 180, numberRadiusFromCenter);

      canvas.drawCircle(size.centerOffset + offset, Constants.dialNumberRadius,
          Paint()..blendMode = BlendMode.clear);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(DialerForegroundPainter oldDelegate) =>
      oldDelegate.numberRadiusFromCenter != numberRadiusFromCenter;
}
