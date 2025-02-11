import 'package:flutter/material.dart';


import 'screens/home_screen.dart';
class BmiApp extends StatelessWidget {
  const BmiApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}