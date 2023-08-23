import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconImagePath;
  final categoryName;

  const CategoryCard({required this.iconImagePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Image.asset(
                iconImagePath,
                // 'lib/assets/icons/medicine.png',
                height: 40,
              ),
              const SizedBox(width: 10),
              Text(categoryName)
            ],
          ),
        ),
      ),
    );
  }
}
