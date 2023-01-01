import 'package:flutter/material.dart';

class SignForgotHelp extends StatelessWidget {
  final String text;
  const SignForgotHelp({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey.shade400,
        fontSize: 15,
      ),
    );
  }
}
