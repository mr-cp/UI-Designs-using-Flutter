import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:splash_screen_ui/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late final AnimationController controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: controller,
              child: const Center(
                child: SizedBox(
                  height: 200,
                  width: 300,
                  child: Image(
                    image: AssetImage(
                      'assets/img1.png',
                    ),
                  ),
                ),
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: controller.value * 2 * math.pi,
                  child: child,
                );
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .2),
            const Text(
              '___Strava___\nThe Riding Club',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
    );
  }
}
