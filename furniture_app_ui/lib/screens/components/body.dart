import 'package:flutter/material.dart';
import 'package:furniture_app_ui/models/product.dart';
import 'category_list.dart';
import 'product_card.dart';
import 'search.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SearchBox(),
          const CatergoryList(),
          const SizedBox(height: 10),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 85),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    press: () {
                      Navigator.pushNamed(context, '/details');
                    },
                    itemIndex: index,
                    product: products[index],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
