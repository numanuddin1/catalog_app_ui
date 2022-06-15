// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
   Color appColor = Color(0xFF67C995);
    Color creamColor = Color(0xfff5f5f5);

   ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.green,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primaryColor: appColor,
      accentColor: appColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ),
      backgroundColor: Colors.white);

   ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
