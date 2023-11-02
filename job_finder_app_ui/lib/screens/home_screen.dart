import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';

import '../widgets/tab_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 25),
        child: Expanded(
          child: Column(
            children: [
              const SuggestionTitle(title: 'Recent Jobs'),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/detail');
                },
                child: const ArticleCard(
                  imagePath: 'assets/co logo.jpg',
                  package: '\$1k - \$1.5K',
                  title: 'Senior UI Designer',
                  subTitle: 'Innovate, Los Angles, USA',
                ),
              ),
              const SuggestionTitle(title: 'Popular Job'),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/detail');
                },
                child: const ArticleCard(
                  imagePath: 'assets/co logo 2.jpeg',
                  package: '\$11k - \$12.5K',
                  title: 'Interior Designer',
                  subTitle: 'Cultivate, California, USA',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

// appbar
  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(320),
      child: Container(
        decoration: _decoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              _topBar(),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Hi Alex!',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 30,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Find The Best Job\nFor You',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                      letterSpacing: .6,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 56,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Search For Job',
                            hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade400,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        height: 56,
                        width: 55,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                          // color: Colors.transparent,
                        ),
                        child: const Icon(Icons.apps_sharp,
                            size: 30, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

//decoration
  BoxDecoration _decoration() {
    return const BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
    );
  }

//topbar
  Widget _topBar() {
    return const Padding(
      padding: EdgeInsets.only(top: 35, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/a2.jpg'),
          )
        ],
      ),
    );
  }
}

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
    required this.imagePath,
    required this.package,
    required this.title,
    required this.subTitle,
  });
  final String imagePath;
  final String package;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Card(
        shadowColor: Colors.white54,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: 56.4,
                      height: 56.4,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    package,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  )
                ],
              ),
              const SizedBox(height: 7),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 25),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(subTitle),
                ),
              ),
              const Row(
                children: [
                  TabButton(title: 'Full Time'),
                  SizedBox(width: 20),
                  TabButton(title: 'Remote'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//suggestion title
class SuggestionTitle extends StatelessWidget {
  const SuggestionTitle({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:
                Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 25),
          ),
          const Text(
            'see more',
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.w500, fontSize: 18),
          )
        ],
      ),
    );
  }
}
