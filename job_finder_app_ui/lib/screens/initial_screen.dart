import 'package:flutter/material.dart';
import 'package:job_finder_app_ui/styles/button.dart';
import '../widgets/dot_page_indicator.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _MyAppState();
}

class _MyAppState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 10),
            SizedBox(
              // margin: const EdgeInsets.symmetric(vertical: 20),
              height: height * 0.3,
              width: width,
              // color: Colors.red,
              child: const Image(
                image: AssetImage('assets/bookmark.png'),
              ),
            ),
            SizedBox(
              child: Column(children: [
                Text(
                  'Secure your future with your dream job',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.black,
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  'Lorem Ipsum has been the industry standard dummy  ever and standard scrambled it to make a type specimen book.',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                      ),
                  textAlign: TextAlign.center,
                ),
              ]),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DotPageIndicator(color: Colors.grey),
                SizedBox(width: 10),
                DotPageIndicator(color: Colors.grey),
                SizedBox(width: 10),
                DotPageIndicator(color: Colors.blue),
              ],
            ),
            ElevatedButton(
              style: buttonPrimary,
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text(
                "Explore Now",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 25,
                      color: Colors.white,
                    ),
              ),
            ),
            const SizedBox(height: 5)
          ],
        ),
      ),
    );
  }
}
