import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(80, 80),
                )),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image.asset("assets/logo.png"),
            )),
        SizedBox(
          height: 20,
        ),
        InputStyle("Username", "Enter Your Username"),
        SizedBox(
          height: 20,
        ),
        InputStyle("Password", "Enter Your Password"),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.cyan, borderRadius: BorderRadius.circular(20)),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "login",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: " Dont have an account ?",
            style: TextStyle(fontSize: 15, color: Colors.grey[850]),
          ),
          TextSpan(
              text: " Register",
              style: TextStyle(fontSize: 15, color: Colors.orangeAccent[700]),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.of(context).pushNamed("/register");
                })
        ]))
      ],
    );
  }
}

Widget InputStyle(String title, String hintext) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
      child: Row(
        children: [
          Text("$title :"),
          SizedBox(width: 10),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3))
                ]),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 14),
                  hintText: hintext),
            ),
          )),
        ],
      ));
}
