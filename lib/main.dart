import 'package:flutter/material.dart';
import 'package:midterm_login/Register.dart';
import 'package:midterm_login/login.dart';
import 'package:midterm_login/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => Splash(),
      "/login": (context) => Login(),
      "/register": (context) => Register(),
    },
  ));
}
