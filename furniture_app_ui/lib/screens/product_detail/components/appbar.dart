import 'package:flutter/material.dart';


AppBar DetailAppBar(BuildContext context) {
    return AppBar(
      backgroundColor:Colors.white70,
      elevation: 0,
      title: const Text(
        'BACK',
        style: TextStyle(color: Colors.black, fontSize: 17),
      ),
      actions: [
        IconButton(padding: const EdgeInsets.only(right: 12),
          onPressed: () {},
          icon: const Icon(Icons.list_alt_outlined),color: Colors.black,
        )
      ],
      leading: IconButton(
        padding: const EdgeInsets.only(left: 12),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
      ),
    );
    
  }
