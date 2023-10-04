import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        child: const Text(
      'Home Screen',
      style: TextStyle(
        fontWeight: FontWeight.w200,
        fontSize: 40,
      ),
    ));
  }
}
