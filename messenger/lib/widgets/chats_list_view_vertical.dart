
import 'package:flutter/material.dart';
import 'package:messenger/widgets/vertical_information/vertical.dart';

class ChatsListViewVertical extends StatelessWidget {
  const ChatsListViewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(itemBuilder: (context,index)=>
          Row(children: [
            CircleAvatar(radius: 40,
            backgroundImage: AssetImage(data[index].image),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start
                ,children: [
                Text(data[index].name,maxLines: 1,overflow: TextOverflow.ellipsis,),
                Text(data[index].messeg,maxLines: 1,overflow: TextOverflow.ellipsis,)
              ],),
            )
          ],), separatorBuilder: (context,index)=>SizedBox(height: 10,), itemCount: data.length),
    );
  }
}
