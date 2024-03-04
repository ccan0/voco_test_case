import 'package:flutter/material.dart';

class ColorConstants {
  static final ColorConstants _instance = ColorConstants._internal();

  factory ColorConstants() {
    return _instance;
  }

  ColorConstants._internal();

  Color primary = Colors.deepPurpleAccent;
  Color black = Colors.black;
  Color darkGrey = Colors.black12;
  Color white = Colors.white;
  Color red = Colors.red;
}