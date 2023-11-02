import 'package:flutter/material.dart';
import '../styles/button.dart';
import '../widgets/tab_button.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text('YouTube Channel'),
        ),
        centerTitle: true,
        // backgroundColor: Colors.blue,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_outlined),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.symmetric(vertical: 45),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage('assets/logo.jpeg'), fit: BoxFit.cover),
                ),
              ),
            ),
            Text(
              'Professional Video Editor',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            const Text(
              '\$600 - \$800',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Row(
              children: [
                TabButton(title: 'Full Time'),
                SizedBox(width: 16.5),
                TabButton(title: 'Remote'),
                SizedBox(width: 16.5),
                TabButton(title: 'Anywhere')
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'About Job and Requirements',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.black,
                    // fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey.shade300,
              ),
            ),
            Text(
              'it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words,  consectetur, from a Lorem consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature.',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.grey.shade500, fontSize: 17, letterSpacing: .8),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: buttonPrimary,
              onPressed: () {
                Navigator.pushNamed(context, '/detail');
              },
              child: Text(
                "Explore Now",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 25,
                      color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
