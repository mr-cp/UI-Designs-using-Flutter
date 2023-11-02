import 'package:flutter/material.dart';
import '../styles/tab_button.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ElevatedButton(
        style: tabButton,
        onPressed: () {},
        child: Text(title,style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
      ),
    );
  }
}
