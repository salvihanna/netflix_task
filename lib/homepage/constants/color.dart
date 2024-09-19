import 'package:flutter/material.dart';

class ColorsPallet {
  static const Color lightAsh = Color.fromARGB(255, 185, 171, 171); 
  static const Color lightGreen = Color.fromARGB(255, 59, 100, 72);
  static const Color darkgreen = Color.fromARGB(255, 44, 66, 51); 
  
  static const LinearGradient scaffoldGradient = LinearGradient(
    colors: [
      lightAsh,
      lightGreen,
      darkgreen,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
