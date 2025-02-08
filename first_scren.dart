import 'package:flutter/material.dart';

class FirstScren extends StatelessWidget {
  const FirstScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black ,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title:Text("Profile Screen",style: TextStyle(
              color: Colors.white
          ),

          ) ,
          leading:
          Icon(Icons.list_rounded,color: Colors.white
          ) ,
          actions: [
           Icon(Icons.edit,color:Colors.white),
           SizedBox(width: 10),
           Icon(Icons.search,color:Colors.white),

         ],
       ),
        body: Align(
    alignment: Alignment.topCenter,
    child: Column(
    mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage:AssetImage("assets/images/Robot.jpg")
              ),
              SizedBox(height: 10),
              Center
              (child:

            Text("Ahmed Abdelsattar",style: TextStyle(color:Colors.white,
            fontSize:14,
            fontWeight:FontWeight.bold ,
            ),

            )
            ),

              Center(child: Text("ahmedabdelsattar@gmail.com",style: TextStyle(color:Colors.grey),)),
              SizedBox(height: 10), // مسافة قبل الخط
              Divider(
                color: Colors.grey,
                thickness: 1.5, // سمك الخط
                indent: 10, // بداية الخط
                endIndent:10, // نهاية الخط
              ),
              SizedBox(height: 20),
              Container(
                margin:EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Colors.grey.shade600,
                ) ,

                child: Row(
                  children: [SizedBox(width: 10),
                  Icon(Icons.settings,color:Colors.white),
                    SizedBox(width: 12),
                    Text("Settings",style: TextStyle(color:Colors.white),)

                  ],


                ),
              ),
              SizedBox(height: 12),
              Container(
                margin:EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Colors.grey.shade600,
                ) ,

                child: Row(
                  children: [SizedBox(width: 10),
                    Icon(Icons.person_rounded,color:Colors.white),
                    SizedBox(width: 12),
                    Text("Friends",style: TextStyle(color:Colors.white),)

                  ],


                ),
              ),
              SizedBox(height: 12),
              Container(
                margin:EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Colors.grey.shade600,
                ) ,

                child: Row(
                  children: [SizedBox(width: 10),
                    Icon(Icons.group,color:Colors.white),
                    SizedBox(width: 12),
                    Text("New Group",style: TextStyle(color:Colors.white),)

                  ],


                ),
              ),
              SizedBox(height: 12),
              Container(
                margin:EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Colors.grey.shade600,
                ) ,

                child: Row(
                  children: [SizedBox(width: 10),
                    Icon(Icons.support_agent,color:Colors.white),
                    SizedBox(width: 12),
                    Text("Support",style: TextStyle(color:Colors.white),)

                  ],


                ),
              ),
              SizedBox(height: 22),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/facebook_5968764.png",height: 30,width: 30,),
                  SizedBox(width: 12),
                  Image.asset("assets/images/instagram_2111463.png",height: 30,width: 30,),
                  SizedBox(width: 12),
                  Image.asset("assets/images/linkedin_15707753.png",height: 30,width: 30,),
                  SizedBox(width: 12),
                  Image.asset("assets/images/whatsapp_733585.png",height: 30,width: 30,),
                ],

              ),
            ],
          ),



    ));
  }
}
