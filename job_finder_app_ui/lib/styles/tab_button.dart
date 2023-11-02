import 'package:flutter/material.dart';

final ButtonStyle tabButton = ElevatedButton.styleFrom(
    minimumSize: const Size(110, 40),
    backgroundColor: Colors.grey.shade300,elevation: 0,
    textStyle: const TextStyle(decorationColor: Color.fromRGBO(255,255,255, .5)),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5),),),);
