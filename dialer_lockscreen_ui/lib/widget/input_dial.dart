import 'package:flutter/material.dart';

import '../constants.dart';

class InputDial extends StatelessWidget {
  const InputDial({super.key, required this.number});
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.dialNumberRadius * 2,
      height: Constants.dialNumberRadius * 2,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Text(
        '$number',
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Colors.white),
      ),
    );
  }
}
