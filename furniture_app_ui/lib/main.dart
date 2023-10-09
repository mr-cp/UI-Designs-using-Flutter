import 'package:flutter/material.dart';
import 'package:furniture_app_ui/screens/product_detail/detail_screen.dart';
import 'package:furniture_app_ui/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      routes: {
        '/details':(context) => const DetailScreen()
      },
      theme: ThemeData(
        primaryColor: Colors.red,
        // accentColor: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
      ),
      home: const ProductScreen(),
    );
  }
}
