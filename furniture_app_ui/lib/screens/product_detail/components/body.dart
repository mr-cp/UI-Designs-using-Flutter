import 'package:flutter/material.dart';

import 'color_dots.dart';
import 'product_poster.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 30),
          decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
          ),
          child: Column(
            children: [
              ProductPoster(
                size: size,
                image: 'lib/assets/images/img2.png',
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDots(
                      fillColor: Colors.blueGrey,
                    ),
                    SizedBox(width: 15),
                    ColorDots(
                      fillColor: Colors.redAccent,
                    ),
                    SizedBox(width: 15),
                    ColorDots(
                      fillColor: Colors.blue,
                      isSelected: true,
                    ),
                  ],
                ),
              ),
              const Text('Classic Leather Armless Chair')
            ],
          ),
        ),
      ],
    );
  }
}
