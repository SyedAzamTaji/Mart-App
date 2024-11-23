import 'package:deshimart/bottomnav.dart';
import 'package:deshimart/product.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset("assets/images/Mask Group.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "Loging",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "Enter your emails and password",
              style: TextStyle(fontSize: 18, color: Color(0xff7C7C7C)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
              width: 364,
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Color(0xff7C7C7C),
                    ),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 2))),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
              width: 364,
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Color(0xff7C7C7C),
                    ),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 2))),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 240, top: 10),
            child: Text(
              "Forgot Password?",
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: SizedBox(
              width: 364,
              height: 67,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff53B175),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavPage()));
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Don’t have an account?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                child: Text(
                  "Singup",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff53B175),
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
