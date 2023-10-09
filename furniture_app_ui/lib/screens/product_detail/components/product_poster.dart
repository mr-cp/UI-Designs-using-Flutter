
import 'package:flutter/material.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    super.key,
    required this.size, required this.image ,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.width * .8,
      width: size.width * .8,
      // color: Colors.red,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * .72,
            width: size.width * .72,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white38,
            ),
          ),
          Image.asset(
            image,
            height: size.width*1,
            fit: BoxFit.cover,
          
            
          )
        ],
      ),
    );
  }
}
