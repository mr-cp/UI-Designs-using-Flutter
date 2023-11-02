
import 'package:flutter/widgets.dart';

class DotPageIndicator extends StatelessWidget {
  const DotPageIndicator({
    super.key, required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration:
           BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
