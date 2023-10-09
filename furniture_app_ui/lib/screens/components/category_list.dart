
import 'package:flutter/material.dart';

class CatergoryList extends StatefulWidget {
  const CatergoryList({super.key});

  @override
  State<CatergoryList> createState() => _CatergoryListState();
}

class _CatergoryListState extends State<CatergoryList> {
  List categories = ['All', 'Sofa', 'Park bench', 'Arm chair', 'Bean bag'];
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: index == selectedIndex
                    ? Colors.white.withOpacity(.4)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12)),
            child: Text(
              categories[index],
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}