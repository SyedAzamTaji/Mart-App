import 'package:deshimart/welcome.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00CA44),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WelcomePage()));
            },
            child: Center(
              child: SizedBox(
                height: 141,
                width: 131,
                child: Image.asset("assets/images/Group 3.png"),
              ),
            ),
          ),
          const Text(
            "DESHI MART",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
