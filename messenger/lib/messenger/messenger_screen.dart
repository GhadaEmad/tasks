
import 'package:flutter/material.dart';
import 'package:messenger/widgets/chats_list_view_horrizontal.dart';
import 'package:messenger/widgets/chats_list_view_vertical.dart';
import 'package:messenger/widgets/messenger_app_bar.dart';
import 'package:messenger/widgets/search_form_fild.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
    child: Column(
      children: [
       MessengerAppBar(),
        SizedBox(height: 20,),
        SearchFormFild(),
        SizedBox(height: 20,),
        ChatsListViewHorrizontal(),
        ChatsListViewVertical()
      ],

    ))))
    ;
  }
}
