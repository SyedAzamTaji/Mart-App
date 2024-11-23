import 'package:deshimart/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
              "Sign Up",
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
              "Enter your credentials to continue",
              style: TextStyle(fontSize: 18, color: Color(0xff7C7C7C)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 364,
              height: 45,
              child: const TextField(
                decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Color(0xff7C7C7C),
                    ),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 2))),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
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
          const SizedBox(
            height: 20,
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
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "By continuing you agree to our ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                child: Text(
                  "Terms of Service",
                  style: TextStyle(fontSize: 16, color: Color(0xff53B175)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "and ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                child: Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 16, color: Color(0xff53B175)),
                ),
              ),
            ],
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Sing Up",
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
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Singup",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff53B175),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
