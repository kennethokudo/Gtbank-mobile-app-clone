import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/mycolor.dart';
import 'package:flutter_application_8/Screens/splashscreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: myColor.color2,
      )),
    );
  }
}
