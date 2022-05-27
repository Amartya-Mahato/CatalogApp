import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class Page_two extends StatefulWidget {
  @override
  State<Page_two> createState() => _Page_twoState();
}

class _Page_twoState extends State<Page_two> {
  
  String str = "";
  bool chkButton = false;

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
              "Welcome $str",
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
                    onChanged: (value) {
                      setState(() {
                        str = value;
                      });
                    },
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

            InkWell(
              onTap: () async {
                setState(() {
                  chkButton = true;
                });
                await Future.delayed(Duration(milliseconds: 900));
                Navigator.pushNamed(context, Routes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: 40,
                width: chkButton ? 40 : 150,
                // color: Colors.deepPurple,
                alignment: Alignment.center,
                child: chkButton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text("Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        )),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(chkButton ? 50 : 8),
                ),
              ),
            ),
            // ElevatedButton(
            //     style: TextButton.styleFrom(minimumSize: Size(160, 40)),
            //     child: Text(
            //       "Login",
            //       style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w200),
            //     ),
            //     onPressed: () {
            //       Navigator.pushNamed(context, Routes.homeRoute);
            //     }),
          ],
        ),
      ),
    );
  }
}
