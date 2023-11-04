import 'dart:math' as math;

import 'package:dialer_lockscreen_ui/constants.dart';
import 'package:dialer_lockscreen_ui/widget/dialer/dialer_foreground_paint.dart';
import 'package:dialer_lockscreen_ui/widget/input_dial.dart';
import 'package:flutter/material.dart';

import 'dialer_background_paint.dart';

class DialerInput extends StatelessWidget {
  const DialerInput({super.key});

  @override
  Widget build(BuildContext context) {
    const inputValues = Constants.inputValues;
    return LayoutBuilder(
      builder: ((context, constraints) {
        final width = constraints.maxWidth;
        final size = Size(width, width);
        final dialNumberDistanceFromCenter = width / 2 -
            16.0 - //page padding
            Constants.ringPadding * 2 -
            Constants.dialNumberPadding * 2;

        return Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: size,
              painter: const DialerBackgroundPainter(),
            ),
            for (var i = 0; i < inputValues.length; i++)
              Transform.translate(
                  offset: Offset.fromDirection(
                    (i + 1) * -math.pi / 6,
                    dialNumberDistanceFromCenter,
                  ),
                  child: InputDial(
                    number: inputValues[i],
                  )),
            CustomPaint(
              size: size,
              painter: DialerForegroundPainter(dialNumberDistanceFromCenter),
            )
          ],
        );
      }),
    );
  }
}
