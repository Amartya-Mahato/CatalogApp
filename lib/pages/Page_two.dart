import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class Page_two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/image/undraw_Login_re_4vu2.png",
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Welcome",
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              textScaleFactor: 2.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                style: TextButton.styleFrom(minimumSize: Size(160, 40)),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w200),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.homeRoute);
                }),
          ],
        ),
      ),
    );
  }
}
