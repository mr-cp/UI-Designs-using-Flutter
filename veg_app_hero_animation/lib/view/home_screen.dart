import 'package:flutter/material.dart';

import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double screenHeight = 0;
  double screenwidth = 0;

  @override
  Widget build(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: Container(
          margin: const EdgeInsets.all(9),
          child: AppBar(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
            ),
            title: const Text(
              'Veg App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.black54,
              ),
            ),
            toolbarHeight: 130,
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                itemCard(
                  context,
                  'veg.jpg',
                  'Vegitable',
                  'Dummy text of the printing and typesetting industry. Lorem Ipsum printing and typesetting has been the industry standard dummy',
                  'Dummy text of the printing and typesetting industry. text of the printing and typesetting industry. Lorem Ipsum printing and Lorem Ipsum printing and typesetting has been the industry standard dummy Dummy text of the printing and typesetting industry. Lorem Ipsum printing and typesetting has been the industry standard dummy',
                ),
                itemCard(
                  context,
                  'fruits.jpg',
                  'Fruits',
                  'Simply dummy text context the printing and typesetting context industry. Lorem Ipsum has been the industry standard dummy',
                  'Simply dummy text context the printing and typesetting context industry. Lorem Ipsum has been the industry standard dummy Simply dummy text context the printing and typesetting context industry. Lorem Ipsum has been the industry standard dummy',
                ),
                itemCard(
                  context,
                  'organic.jpg',
                  'Organic',
                  'Text of the printing Lorem Ipsum has been the text of the printing and typesetting industry. Lorem Ipsum printing and industry standard',
                  'Text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy Text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy',
                ),
                itemCard(
                  context,
                  'spice.jpg',
                  'Spice',
                  'Printing text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy',
                  'Printing text of the printing and typesetting industry. Lorem Ipsum has been the industry standard text of the printing and typesetting industry. Lorem Ipsum printing and dummy Printing text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget itemCard(BuildContext context, String asset, String title, String desc,
      String fullDesc) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  DetailScreen(asset: asset, tag: title, fullDesc: fullDesc),
            ),
          );
        },
        child: SizedBox(
          height: screenHeight / 5,
          width: screenwidth,
          // color: Colors.red,
          child: Row(
            children: [
              Hero(
                tag: title,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: screenHeight / 2.8,
                    width: screenwidth / 2.8,
                    child: Image.asset(
                      'assets/$asset',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        desc,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const Spacer(),
                      const Text(
                        'In-Stock',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.green),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
