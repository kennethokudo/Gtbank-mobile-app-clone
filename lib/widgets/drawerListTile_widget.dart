import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/mycolor.dart';

class DrawerListTileWidget extends StatelessWidget {
  final String text;
  final IconData? icon;
  final IconData icon2;

  const DrawerListTileWidget(
      {super.key, required this.icon, required this.text, required this.icon2});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: myColor.color2,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Text(text),
        trailing: Icon(
          icon2,
          color: Colors.grey,
          size: 18,
        ),
      ),
    );
  }
}
