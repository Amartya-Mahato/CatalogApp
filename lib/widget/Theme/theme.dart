import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static Color creamColor = Color.fromARGB(255, 255, 253, 209);
  static Color darkBluishColor = Color(0xff403b58);
  static Color textThemeColor = Colors.grey;

  static ThemeData lightTheme(BuildContext context) {

    return ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      primarySwatch: Colors.grey,
      iconTheme: IconThemeData(color: Colors.black),
      canvasColor: MyTheme.creamColor,
      cardColor: Colors.white,
      backgroundColor: MyTheme.darkBluishColor,
    );
  }

  static ThemeData darkTheme(BuildContext context) {

    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primarySwatch: Colors.grey,
      iconTheme: IconThemeData(color: Colors.white),
      canvasColor: Colors.grey.shade900,
      cardColor: Colors.black,
      backgroundColor: Colors.blue.shade900,
    );
  }
}
