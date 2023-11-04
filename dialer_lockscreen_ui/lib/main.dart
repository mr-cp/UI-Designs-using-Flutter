import 'package:dialer_lockscreen_ui/passcode_input_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialer Lock Screen',
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        textTheme: GoogleFonts.kanitTextTheme(),
      ),
      home: const Scaffold( backgroundColor: Colors.white,body: PasscodeInputView(expectedCode: '6942')),
      
    );
  }
}
