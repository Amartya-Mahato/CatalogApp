import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/drawer.dart';

class Home_pages extends StatelessWidget {
  const Home_pages(Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("AM"),
        ),
      ),
      body: Center(
        child: Container(child: Text("Hello this is my first time")),
      ),
      drawer: MyDrawer(),
    );
  }
}