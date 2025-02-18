
import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    Image.asset("asstes/image/calls.jpg"),
        SizedBox(height: 20,),
        Text("There are no calls currently.",style: TextStyle(fontWeight: FontWeight.w700),)
      ],

    ) ;
  }
}
