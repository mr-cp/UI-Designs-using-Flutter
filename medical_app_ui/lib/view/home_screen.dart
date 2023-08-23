import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:medical_app_ui/utils/docters_list.dart';

import '../utils/category_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Malik Dinar',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(13),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.person,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.pink[100]),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      // animations
                      child: SizedBox(
                          height: 130,
                          width: 140,
                          child: Image.asset('lib/assets/images/a1.jpg',),
                         ),
                    ),

                    //image
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'How do you feel?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Fill out your medical card right now',
                              style: TextStyle(fontSize: 18),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    'Get Started !!',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.deepPurple[100],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'How can we help you?',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                    iconImagePath: 'lib/assets/icons/medicine.png',
                    categoryName: 'Dentist',
                  ),
                  CategoryCard(
                    iconImagePath: 'lib/assets/icons/drugs.png',
                    categoryName: 'Psychiatry',
                  ),
                  CategoryCard(
                    iconImagePath: 'lib/assets/icons/medical-team.png',
                    categoryName: 'Surgeon',
                  ),
                  CategoryCard(
                    iconImagePath: 'lib/assets/icons/medicine.png',
                    categoryName: 'Physiotherapy',
                  ),
                  CategoryCard(
                    iconImagePath: 'lib/assets/icons/drugs.png',
                    categoryName: 'Orthopedic',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Doctor list',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DoctorsList(
                      docName: 'Dr. Mac Daylan',
                      docSpec: 'Therapist',
                      imgPath: 'lib/assets/images/a2.jpg',
                      rating: '4.8'),
                  DoctorsList(
                      docName: 'Dr. Rick Moyar',
                      docSpec: 'Surgeon',
                      imgPath: 'lib/assets/images/a3.jpg',
                      rating: '4.9'),
                  DoctorsList(
                      docName: 'Dr. Arindham Nair',
                      docSpec: 'Psychatric',
                      imgPath: 'lib/assets/images/a2.jpg',
                      rating: '4.7'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const [Icon(Icons.person_2),
        Icon(Icons.home),
        Icon(Icons.settings)
        ],
        buttonBackgroundColor: Colors.transparent,
        backgroundColor: const Color.fromARGB(255, 203, 133, 209),
        color: const Color.fromARGB(255, 231, 200, 230),
        height: 40,
      ),
    );
  }
}
