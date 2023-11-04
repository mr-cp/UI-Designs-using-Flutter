import 'package:flutter/material.dart';

class InputModeButton extends StatelessWidget {
  const InputModeButton(
      {super.key, required this.simpleInputMode, required this.onModeChanged});

  final bool simpleInputMode;
  final VoidCallback onModeChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onModeChanged,
        child: Text(
          simpleInputMode ? "DIALER" : "PASSCODE",
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ));
  }
}
