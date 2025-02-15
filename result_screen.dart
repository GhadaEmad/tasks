import 'dart:math';

import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import 'home_screen.dart';
class ResultScreen extends StatelessWidget {
  final int weight;
  final double height;
  final int age;
  const ResultScreen({super.key, required this.weight, required this.height, required this.age});
   double convertheight(){
    return height/100;
  }
   double clcBMI(){
     return weight/(pow(convertheight(), 2));
  }
  String textResult() {
    if (clcBMI() < 18.4) {
      return ("UnderWeight");
    }
    else if (clcBMI() > 18.4 && clcBMI() < 24.9) {
      return (" Normal");
    } else if (clcBMI() > 25 && clcBMI() < 39.9) {
      return (" OverWeight");
    } else {
      return ("obese");
    }}

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          backgroundColor: AppColors.mainColor,
          appBar: AppBar(
            elevation: 10,
            iconTheme: IconThemeData(
                color: Colors.white
            ),
            backgroundColor: AppColors.secondaryColor,
            centerTitle: true,
            leading: Center(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text("home", style: TextStyle(
                    color: Colors.white
                ),),
              ),
            ),
            title: Text("BMI Calculator",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
              ),
            ),
          ),
          body:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 24),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Result ", style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),),
                SizedBox(height: 25,),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 52),
                  decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Text("${textResult()}", style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.green),),
                      SizedBox(height: 33,),
                      Text("${clcBMI().toStringAsFixed(2)}",
                        style: TextStyle(fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),),
                      SizedBox(height: 60,),
                      Text("You Have a Normal Body Weight,\n Good Job",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textGrayColor
                        ),),

                    ],

                  ),

                ),
                SizedBox(height: 50,),
                Center(
                  child: ElevatedButton(

                    style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        fixedSize: Size(200,50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),

                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomeScreen()));
                    }, child: Text(" Re Calculate"),),
                ),

              ],
            ),
          )
      );
    }
  }
