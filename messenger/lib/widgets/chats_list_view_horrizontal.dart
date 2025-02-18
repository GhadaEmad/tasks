
import 'package:flutter/material.dart';
import 'package:messenger/widgets/horrizontal_information/horrizontal.dart';

class ChatsListViewHorrizontal extends StatelessWidget {
  const ChatsListViewHorrizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal
        ,itemBuilder:(context,index)=>  SizedBox(
        width: 80,
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(data[index].image),
            ),
            SizedBox(height: 5,),
            Text(data[index].name,maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    separatorBuilder: (context, index) =>SizedBox(width: 10,),itemCount: data.length

      ),
    );
  }
}
