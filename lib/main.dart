import 'package:bmif/input_screen.dart';
import 'package:bmif/result_screen.dart';
import 'package:bmif/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(bmi());
}
class bmi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI',
      home: SplashScreen(),
    );
  }

}

