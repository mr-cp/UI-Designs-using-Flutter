import 'dart:math' as math;

abstract class Constants {
  static const inputValues = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  static const ringPadding = 4.0;
  static const ringWidth = 80.0;
  static const dialNumberPadding = 8.0;
  static const dialNumberRadius =
      ringWidth / 2 - (ringPadding + dialNumberPadding);
  static const firstDialNumberPosition = math.pi / 3;
  static const maxDialerRingAngle = math.pi *7/4;
  static const maxDialerSweepAngle = math.pi / 2*3;

}
