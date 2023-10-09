
import 'package:flutter/material.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.fillColor,
    this.isSelected = false,
  });
  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? fillColor : Colors.transparent,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(5, 12),
              spreadRadius: .2,
              blurRadius: 7,
            ),
          ],
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
