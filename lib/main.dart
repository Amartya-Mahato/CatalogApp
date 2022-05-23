import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home_pages.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home_pages(key),
    );
  }
}
