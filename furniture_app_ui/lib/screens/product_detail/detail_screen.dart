import 'package:flutter/material.dart';
import 'package:furniture_app_ui/screens/product_detail/components/body.dart';

import 'components/appbar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: DetailAppBar(context),
      body: const DetailBody(),
    );
  }
}
