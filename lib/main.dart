import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
            child: Center(
                child: Container(
                    child: Text(
      "Hello Fuckers",
      style: TextStyle(color: Colors.pink),
    )))));
  }
}
