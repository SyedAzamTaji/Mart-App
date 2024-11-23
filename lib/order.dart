import 'package:deshimart/product.dart';

import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 160),
              width: 270,
              height: 240,
              child: Image.asset("assets/images/Group 6872.png"),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            child: const Text(
              "Your Order has been\n         accepted",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            child: const Text(
              "Your items has been placcd and is on\n         it’s way to being processed",
              style: TextStyle(
                  fontSize: 21,
                  color: Color(0xff7C7C7C),
                  fontWeight: FontWeight.w200),
            ),
          ),
          const SizedBox(
            height: 160,
          ),
          SizedBox(
            width: 364,
            height: 67,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff53B175),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductPage()));
                },
                child: const Text(
                  "Back to home",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
