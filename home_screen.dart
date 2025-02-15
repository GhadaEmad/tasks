import 'package:bim/widgets/information_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../core/app_colors.dart';
import '../widgets/gender_container.dart';
import 'result_screen.dart';
class HomeScreen extends StatefulWidget {

  HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  double sliderValue=150;
  int weight=1;
  int age=10;
  bool? isMale;
int point=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.mainColor,
      appBar: AppBar(

        elevation: 10,
        backgroundColor: AppColors.secondaryColor,
        centerTitle:true,
        title: Text("BMI Calculator",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal:26 ),
        child: Column(
          children: [
            Row(
              children: [
                GenderContainer(
                  onTap: (){
                    if(isMale==false||isMale==null){
                      setState(() {
                        isMale=true;
                      });
                    }
                  },
                  title: "Male",
                  icon:"assets/icons/Male.svg" ,
                  isActive: isMale??false,
                ),
                SizedBox(width: 10,),
                GenderContainer(
                  title: "Female",
icon:"assets/icons/Female.svg",
                  isActive: !(isMale??true),
                  onTap: (){
                    if(isMale??true){
                      setState(() {
                        isMale=false;
                      });
                    }
                  },
                ),
              ],
            ),
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 27,horizontal: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.mainLightColor
              ),
              child: Column(
                children: [
                  Text("Height",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),),
                  Text.rich(
                      TextSpan(
                          children: [
                            TextSpan(
                                text: "${sliderValue.toInt()}",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white
                                )
                            ),
                            TextSpan(
                                text:  "cm",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                )
                            )
                          ]
                      )
                  ),
                  Slider(
                    min: 1,
                    max: 200
                    ,value: sliderValue, onChanged: (value){
                    setState(() {
                      sliderValue=value;
                    });
                  },
                    activeColor: Color(0xffE83D67),
                  )
                ],
              ),
            ),
            SizedBox(height: 25,),
            /// ToDo: custom this widget
            Row(
              children: [
                InformationContainer(text:"Weight",point:weight,incremint: (){
                  setState(() {
                    weight++;
                  });
                },
                decremint: (){
                  weight--;
                },),
                SizedBox(width: 10,),
                InformationContainer(text: "Age",point: age,
                incremint: (){
                  setState(() {
                    age++;
                  });
                },
                decremint: (){
                  setState(() {
                    age--;
                  });
                },)
              ],
            ),
            SizedBox(height: 10,),
            ElevatedButton(
    style:ElevatedButton.styleFrom(
    backgroundColor: Colors.pink,
    fixedSize: Size(200,50),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)
    )
    ),

    onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>ResultScreen(weight:weight ,
                height: sliderValue,
              age: age,)));
            }, child: Text("Calculate"),),
          ],
        ),
      ),
    );
  }
}