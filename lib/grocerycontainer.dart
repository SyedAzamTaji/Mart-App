import 'package:flutter/material.dart';

class Grocerycontainer extends StatelessWidget {
  final AssetImage image;
  final String title;
  final Color color;
  const Grocerycontainer(
      {super.key,
      required this.image,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 110,
      width: 248,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), color: color),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(image: DecorationImage(image: image)),
            margin: const EdgeInsets.only(left: 20),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
              child: Text(
            title,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xff3E423F)),
          )),
        ],
      ),
    );
  }
}
