import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          color: MyTheme.creamColor,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
              fontFamily: GoogleFonts.lato().fontFamily, fontSize: 20),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        brightness: Brightness.dark,
      );

  static ThemeData yellowTheme(BuildContext context) {
    return ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      primarySwatch: Colors.yellow,
      appBarTheme: AppBarTheme(
        color: Colors.yellow,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 20),
      ),
    );
  }

  static Color creamColor = Color.fromARGB(255, 255, 253, 209);
  static Color darkBluishColor = Color(0xff403b58);
}
