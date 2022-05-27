import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home_pages.dart';
import 'package:flutter_application_1/pages/Page_two.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/utils/routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home_pages(key),
      initialRoute: "/login",
      routes: {
        Routes.homeRoute: (context) => Home_pages(key),
        Routes.loginRoute: (context) => Page_two(),
      },

      themeMode: ThemeMode.light,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.deepPurple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: Colors.red,
      ),
    );
  }
}
