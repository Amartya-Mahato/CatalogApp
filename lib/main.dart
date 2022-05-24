import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home_pages.dart';
import 'package:flutter_application_1/pages/Page_two.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home_pages(key),
      routes: {
        // "/": (context) => Home_pages(key),
        "/": (context) => Page_two(),
        "/login": (context) => Page_two(),
      },
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      darkTheme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}
