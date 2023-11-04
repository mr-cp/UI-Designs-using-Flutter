import 'dart:math' as math;

import 'package:dialer_lockscreen_ui/constants.dart';
import 'package:dialer_lockscreen_ui/utils.dart';
import 'package:flutter/material.dart';

class DialerBackgroundPainter extends CustomPainter {
  const DialerBackgroundPainter();
  @override
  void paint(Canvas canvas, Size size) {
    const ringWidth = Constants.ringWidth;
    final paint = Paint()
      ..color = const Color.fromRGBO(0, 0, 0, 1.0)
      ..strokeWidth = ringWidth
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
        Rect.fromCircle(
            center: size.centerOffset, radius: size.width / 2 - ringWidth / 2),
        0,
        math.pi * 2.0,
        false,
        paint);
  }

  @override
  bool shouldRepaint(DialerBackgroundPainter oldDelegate) => false;
}
