import 'package:flutter/material.dart';

class Page_two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Hi how are you",
          style: TextStyle(
            // background: Colors.red,
            fontSize: 10,
            color: Colors.yellow,
            fontWeight: FontWeight.w400,
          ),
          textScaleFactor: 5.0,
        ),
      ),
      color: Colors.deepPurple,
    );
  }
}
