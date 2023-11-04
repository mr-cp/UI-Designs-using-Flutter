import 'package:dialer_lockscreen_ui/widget/dialer/dialer_input.dart';
import 'package:dialer_lockscreen_ui/widget/input_mode_button.dart';
import 'package:flutter/material.dart';

import 'widget/keypad/keypad_input.dart';

const _padding = 16.0;

class PasscodeInputView extends StatefulWidget {
  const PasscodeInputView({super.key, required this.expectedCode});

  final String expectedCode;

  @override
  State<PasscodeInputView> createState() => _PasscodeInputViewState();
}

class _PasscodeInputViewState extends State<PasscodeInputView> {
  var _simpleInputMode = false;
  void _onModeChanged() => setState(() => _simpleInputMode = !_simpleInputMode);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          _padding,
          _padding * 3,
          _padding,
          _padding * 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter\nPasscode'.toUpperCase(),
              style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 35),
            Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 25,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (var i = 0; i < 4; i++)
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                            ),
                            if (i < 3) const SizedBox(width: 10)
                          ],
                        ),
                    ],
                  ),
                )),
            Expanded(
              child:
                  _simpleInputMode ? const DialerInput() : const KeypadInput(),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InputModeButton(
                simpleInputMode: _simpleInputMode,
                onModeChanged: _onModeChanged,
              ),
            )
          ],
        ),
      ),
    );
  }
}
