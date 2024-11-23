import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final AssetImage image;
  final String title;
  final String subtitle;
  final String price;
  const ProductContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.price});

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
                title,
                style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff181725)),
              )),
          Container(
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                subtitle,
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
                  "\$$price",
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
