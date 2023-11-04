import 'package:flutter/widgets.dart';

extension SizeX on Size {
  Offset get centerOffset => Offset(width / 2, height / 2);
}
