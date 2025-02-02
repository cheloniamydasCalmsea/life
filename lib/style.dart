import 'package:flutter/material.dart';

var _var1;

var theme = ThemeData(
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
  ),
  appBarTheme: AppBarTheme(
    color: Colors.white,
    elevation: 5,
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
    actionsIconTheme: IconThemeData(color: Colors.black),
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.red),
  ),
);