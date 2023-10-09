import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: const Text('Dashboard'),
      actions: [
        IconButton(
          onPressed: () {},
          // ignore: deprecated_member_use
          icon: SvgPicture.asset('lib/assets/icons/icon2.svg',color: Colors.white,),
         
        )
      ],
    );
  }