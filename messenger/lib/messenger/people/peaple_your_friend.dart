
import 'package:flutter/cupertino.dart';

class PeapleYourFriend extends StatelessWidget {
  const PeapleYourFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("asstes/image/frined.jpg"),
        SizedBox(height: 20,),
        Text("Find your friends now.", style: TextStyle(fontWeight: FontWeight.w700),)
      ],
    );
  }
}
