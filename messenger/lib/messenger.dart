
import 'package:flutter/material.dart';
import 'package:messenger/messenger/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:messenger/messenger/messenger_screen.dart';


class Messenger extends StatelessWidget {
  const Messenger({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BottomNavBarScreen()
    );
  }
}
