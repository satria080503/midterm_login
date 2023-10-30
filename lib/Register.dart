import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(80, 80),
                )),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Image.asset(
                    "assets/logo.png",
                    height:
                        150, // Adjust the height to fit within the Container
                    width: 150, // Adjust the width if necessary
                  ),
                ),
                Text(
                  "Register",
                  style: TextStyle(fontSize: 35, color: Colors.black),
                )
              ],
            )),
        SizedBox(
          height: 30,
        ),
        InputStyle("Username", "Enter Your Username"),
        InputStyle("Password", "Enter Your Password"),
        InputStyle("Confirm Password", "Enter Your Password"),
        InputStyle("Email", "Enter Your Email"),
        InputStyle("Number Phone", "Enter Your Number"),
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
              "Register",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: " Already have an account ?",
                style: TextStyle(fontSize: 15, color: Colors.grey[850]),
              ),
              TextSpan(
                text: " Login",
                style: TextStyle(fontSize: 15, color: Colors.green[700]),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).pushNamed("/Login");
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget InputStyle(String title, String hintext) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(50, 2, 50, 2),
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
