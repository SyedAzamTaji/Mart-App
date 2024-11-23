import 'package:flutter/material.dart';

class ExclusiveContainer extends StatelessWidget {
  final AssetImage image;
  final String text1;
  final String text2;
  final String text3;

  const ExclusiveContainer(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 248,
      width: 174,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: const Color(0xffE2E2E2))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 97,
            width: 85,
            margin: const EdgeInsets.only(left: 40, top: 20),
            decoration: BoxDecoration(image: DecorationImage(image: image)),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                text1,
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff181725)),
              )),
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                text2,
                style: const TextStyle(fontSize: 15, color: Color(0xff7C7C7C)),
              )),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Text(
                  "\$$text3",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff181725)),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Image.asset("assets/images/Group 6813.png"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
