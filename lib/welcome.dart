import 'package:deshimart/signup.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 1),
      () {
        showModalBottomSheet(
          isDismissible: false,
          enableDrag: true,
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Container(
                width: 430,
                height: 340,
                decoration: const BoxDecoration(
                    color: Color(0xff00CA44),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const Text(
                        "Welcome to our Store",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFFFFFF)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: const Text(
                        "Get your grocery in as fast as\n               one hours",
                        style:
                            TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupPage()));
                      },
                      child: Container(
                        width: 352,
                        height: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffFFFFFF)),
                        child: Center(
                            child: Text(
                          "Go To Mart",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xff53B175)),
                        )),
                      ),
                    )
                  ],
                ));
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 100, left: 20),
            height: 80,
            width: 75,
            child: Image.asset("assets/images/Group 33.png"),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            height: 50,
            width: 186,
            child: Image.asset("assets/images/Group 34.png"),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 40),
            height: 250,
            width: 345,
            child: Image.asset("assets/images/Group 35.png"),
          ),
          const SizedBox(
            height: 55,
          ),
        ],
      ),
    );
  }
}
