
import 'dart:math';

import 'package:flutter/material.dart';
class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  List <String> titel=["“Believe in yourself and all that you are.\n"
  "Know that there is something inside you\n"
  "that is greater than any obstacle.”","It's okay, we'll try again.","Dreams do come true, but we have to pursue them.",
  "Be sure that you will arrive."
  ,"Don't compare yourself to anyone, because everyone has different abilities.",

  "Don't stop until you arrive.",

  "You are the group, even if you are alone.",

  " If you focus on your path, you will arrive.",

  " May each of us find what he deserves one day."];
  String currentQuote = "the first string"; // النص الأولي
  int currentIndex = 0; // فهرس الجملة الحالية

  void showNextQuote() {
    setState(() {
      if (currentIndex < titel.length - 1) {
        currentIndex++; // انتقل إلى الجملة التالية
      } else {
        currentIndex = 0; // إعادة التكرار من البداية
      }
    });
  }

  @override
  Widget build(BuildContext context) {

     return Scaffold(
       backgroundColor:Color(0xFF2C2C2C),
       appBar: AppBar(
         backgroundColor: Color(0xFF2C2C2C),
         centerTitle: true,
         title: Text("Daily Motivation",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
       ),
       body:Align(
    alignment: Alignment.topCenter,
    child: Column(
    mainAxisSize: MainAxisSize.max,
         children: [
           SizedBox(height:  50,),
          Icon(Icons.format_quote,
          color: Colors.orangeAccent,size: 100,),
           SizedBox(height:  40,),
           Text( titel[currentIndex], style: TextStyle(color: Colors.white70,fontStyle: FontStyle.italic,),),
           SizedBox(height:  40,),
           ElevatedButton(
             style:ElevatedButton.styleFrom(
               backgroundColor: Colors.orangeAccent,
               fixedSize: Size(200,50),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10)
               )
             )
           , onPressed:showNextQuote,


               child: Text("Get New Quote",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold ),))
         ],
       ),
       ));
  }
}

