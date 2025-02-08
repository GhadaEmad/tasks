
import 'package:flutter/material.dart';

import 'first_scren.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false ,
        home: FirstScren()
    );
  }

}