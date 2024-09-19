import 'package:flutter/material.dart';

class ColorsPallet {
  static const Color lightAsh = Color(0xff586B71);
  static const Color lightGreen = Color(0xff374244);
  static const Color darkgreen = Color(0xff283032);

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
