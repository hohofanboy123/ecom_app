import 'package:ecom_app/size_config.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class AppTheme {
  static ThemeData appThemeStyle(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black)),
      textTheme: TextTheme(
        displayLarge: 
          TextStyle(
            color: mainColor,
            fontSize: getWidth(40),
            fontWeight: FontWeight.bold
          ),
        bodyLarge:
          TextStyle(
            color: Colors.black,
            fontSize: getWidth(30),
            fontWeight: FontWeight.bold
          ),
        bodyMedium:
          TextStyle(
            color: textColor,
            fontSize: getWidth(15),
          ),
        bodySmall: 
          const TextStyle(
            color: textColor
          ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        border: outlineInputBorder,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(28)),
  borderSide: BorderSide(color: textColor),
  gapPadding: 10,
);