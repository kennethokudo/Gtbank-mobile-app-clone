import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/mycolor.dart';

class MyListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  const MyListTile(
      {super.key,
      required this.icon,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: sqrt1_2,
      minVerticalPadding: 1.0,
      onTap: onPressed,
      leading: Icon(
        icon,
        color: myColor.color2,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
