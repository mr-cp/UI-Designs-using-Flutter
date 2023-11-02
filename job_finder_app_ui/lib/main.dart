import 'package:flutter/material.dart';
import 'package:job_finder_app_ui/screens/detail_screen.dart';
import 'package:job_finder_app_ui/screens/home_screen.dart';
import 'package:job_finder_app_ui/screens/initial_screen.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Finder',
      theme: ThemeData(fontFamily: 'Futura'),
      // home: const DetailScreen(),
      initialRoute:  '/initial',
      routes: {
        '/initial': (context) => const InitialScreen(),
        '/home': (context) => const HomeScreen(),
        '/detail': (context) => const DetailScreen(),
      },
    ),
  );
}
