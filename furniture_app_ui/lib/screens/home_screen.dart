import 'package:flutter/material.dart';
import 'package:furniture_app_ui/screens/components/body.dart';

import 'components/appbar.dart';


class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: buildAppBar(),
      body:  const Body(),
    );
  }


}
