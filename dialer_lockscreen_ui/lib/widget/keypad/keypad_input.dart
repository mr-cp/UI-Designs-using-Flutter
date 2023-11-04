import 'package:dialer_lockscreen_ui/constants.dart';
import 'package:flutter/material.dart';

import '../input_dial.dart';

class KeypadInput extends StatelessWidget {
  const KeypadInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (var i = 0; i < 3; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var j = 0; j <3; j++)
                InputDial(
                  number: Constants.inputValues[i * 3 + j],
                )
            ],
          ),
        InputDial(
          number: Constants.inputValues.last,
        ),
      ],
    );
  }
}
