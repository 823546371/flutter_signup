import 'package:flutter/material.dart';
import 'package:flutter_signup/constants.dart';
import 'package:flutter_signup/screen/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: mBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Montserrat'
      ),
      home: HomeScreen(),
    );
  }
}