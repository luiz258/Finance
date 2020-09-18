
import 'package:flutter/material.dart';

ThemeData androidTheme(){

  ///const brightness = Brightness.light;
const primaryColor = const Color(0xFF3E4685);
const backgroundColor =  const Color(0xFFF3F8FE);
const accentColor =  const Color(0xFFFFFFFF);
const darknessColor =  const Color(0xFF3F4040);
const secondaryHeaderColor =  const Color(0xFF7E7F80);


return ThemeData(
primaryColor: primaryColor,
backgroundColor: backgroundColor,
accentColor: accentColor,
primaryColorDark: darknessColor,
secondaryHeaderColor: secondaryHeaderColor,


 textTheme: new TextTheme(

      display1: new TextStyle(
        fontWeight: FontWeight.w500,
        color:secondaryHeaderColor ,
        fontSize: 18
      ),

      display2: new TextStyle(
        fontWeight: FontWeight.w800,
        color:primaryColor ,
        fontSize: 26
      ),
      display3: new TextStyle(
        fontWeight: FontWeight.w500,
        color:secondaryHeaderColor ,
        fontSize: 14
      ),

       display4: new TextStyle(
        fontWeight: FontWeight.w700,
        color:primaryColor ,
        fontSize: 22
      ),
      title: new TextStyle(
        fontWeight: FontWeight.w900,
        color:darknessColor ,
        fontSize: 18
      ),
    ),
    

);
}