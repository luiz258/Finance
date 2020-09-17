
import 'package:flutter/material.dart';

ThemeData androidTheme(){

  ///const brightness = Brightness.light;
const primaryColor = const Color(0xFF3E4685);
const backgroundColor =  const Color(0xFFF3F8FE);
const accentColor =  const Color(0xFFFFFFFF);
const darknessColor =  const Color(0xFF3F4040);
return ThemeData(
primaryColor: primaryColor,
backgroundColor: backgroundColor,
accentColor: accentColor,
primaryColorDark: darknessColor,
);
}