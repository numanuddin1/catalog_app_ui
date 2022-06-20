// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  Color appColor = Color(0xFF2BAE66);
  Color creamColor = Color(0xfff5f5f5);

  //dark colors
  Color darkCanvasColor = Vx.gray900;
  Color lightCanvasColor = Vx.gray700;
  Color darkGreenColor = Color(0xff399a5c);
  Color lightGreenColor = Color(0xFF45CE82);

  ThemeData lightTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: appColor,
      cardColor: Colors.white,
      canvasColor: creamColor,
      accentColor: Colors.black,
      buttonColor: lightGreenColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ),
      backgroundColor: Colors.white,
      );

  ThemeData darkTheme(BuildContext context) => ThemeData(
     brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: appColor,
      cardColor: Colors.black,
      accentColor: Colors.white,
      buttonColor: darkGreenColor,
      canvasColor: darkCanvasColor,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme,
      ),
     );
}
