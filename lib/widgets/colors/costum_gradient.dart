import 'package:flutter/material.dart';

class GradientStyles {
  static LinearGradient aminGradient() {
    return const LinearGradient(colors: [
      Color.fromARGB(128, 142, 45, 226),
      Color.fromARGB(255, 74, 0, 224),
    ]);
  }

  static LinearGradient customGradient() {
    return const LinearGradient(colors: [
      Color.fromARGB(255, 255, 0, 0),
      Color.fromARGB(255, 0, 255, 0),
      Color.fromARGB(255, 0, 0, 255),
    ]);
  }

  static LinearGradient eveningSunshine() {
    return const LinearGradient(colors: [
      Color(0xFFb92b27),
      Color(0xFF1565C0),
    ]);
  }

  static LinearGradient veryBlue() {
    return const LinearGradient(colors: [
      Color(0xFF0575E6),
      Color(0xFF021B79),
    ]);
  }
}

class CostumColor {
  static Color navy() {
    return Color(0xFF11009E);
  }
}
