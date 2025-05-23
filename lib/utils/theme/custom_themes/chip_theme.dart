import 'package:flutter/material.dart';

class CChipTheme {
  CChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Color.fromRGBO(128, 128, 128, 0.4), //gray with 0.4 opacity
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey, //gray with 0.4 opacity
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );
}
