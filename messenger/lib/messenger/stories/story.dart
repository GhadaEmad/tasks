
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("asstes/image/story.jpg"),
        SizedBox(height: 20,),
        Text("You don't have any stories.",style: TextStyle(fontWeight: FontWeight.w700,),)
      ],
    );
  }
}
