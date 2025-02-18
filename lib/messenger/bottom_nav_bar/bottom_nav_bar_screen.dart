import 'package:flutter/material.dart';
import 'package:messenger/messenger/calls/call.dart';
import 'package:messenger/messenger/messenger_screen.dart';
import 'package:messenger/messenger/people/peaple_your_friend.dart';
import 'package:messenger/messenger/stories/story.dart';



class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key, });

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex=0;

  Widget currentScreen(){
    switch(currentIndex){
      case 0:
        return MessengerScreen();
      case 1:
        return Call();
      case 2:
        return PeapleYourFriend();
      case 3:
        return Story();
      default:
        return SizedBox();
    }
  }
  @override
  Widget build(BuildContext context) {
    debugPrint("rebuild build");
    return Scaffold(
      bottomNavigationBar:
      BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex=index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble),label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.video_call_sharp),label: "Calls"),
            BottomNavigationBarItem(icon: Icon(Icons.people),label: "People"),
            BottomNavigationBarItem(icon: Icon(Icons.web_stories),label: "Stories"),
          ]),
      body: currentScreen(),
    );
  }
}