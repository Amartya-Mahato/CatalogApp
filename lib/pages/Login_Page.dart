import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class Login_Page extends StatefulWidget {
  @override
  State<Login_Page> createState() => _Login_PageState();
}

// ignore: camel_case_types
class _Login_PageState extends State<Login_Page> {
  String str = "";
  bool chkButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        chkButton = true;
      });
      await Future.delayed(Duration(milliseconds: 900));
      await Navigator.pushNamed(context, Routes.homeRoute);
      setState(() {
        chkButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                      validator: (value) {
                        if (value!.isEmpty) return "username can not be empty";
                        return null;
                      },
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
                      validator: (value) {
                        if (value!.isEmpty) return "password can not be empty";
                        if (value.length < 8)
                          return "password length can not be lesser than 8 letters";
                        return null;
                      },
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
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(chkButton ? 50 : 8),
                child: InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: chkButton
                        ? Duration(milliseconds: 500)
                        : Duration(microseconds: 0),
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
