import 'dart:js_interop';

import 'package:deshimart/bottomnav.dart';
import 'package:deshimart/cart_data.dart';

import 'package:flutter/material.dart';

class RedApple extends StatefulWidget {
  final AssetImage image;
  final String title;
  final String subtitle;
  final num price;

  const RedApple(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.price});

  @override
  State<RedApple> createState() => _RedAppleState();
}

class _RedAppleState extends State<RedApple> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => BottomNavPage()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 30),
                child: Icon(
                  Icons.chevron_left,
                  size: 30,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, top: 30),
              child: Icon(Icons.logout_outlined),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Center(
          child: Container(
            width: 250,
            height: 150,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: widget.image, fit: BoxFit.contain),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                border: Border.all(width: 0, color: const Color(0xffF2F3F2))),
          ),
        ),
        SizedBox(
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                widget.title,
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff181725),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.favorite_border,
                size: 30,
                color: Color(0xff7C7C7C),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            widget.subtitle,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Color(0xff7C7C7C)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (count > 1) {
                      count--;
                    }
                  });
                },
                child: Icon(
                  Icons.minimize,
                  size: 25,
                  color: Color(0xffB3B3B3),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 5),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(17)),
                    border: Border.all(width: 1, color: Color(0xffE2E2E2))),
                child: Center(
                    child: Text(
                  "$count",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725)),
                )),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    count++;
                  });
                },
                child: Icon(
                  Icons.add,
                  size: 25,
                  color: Color(0xff53B175),
                ),
              ),
            ),
            SizedBox(
              width: 160,
            ),
            Container(
              child: Text(
                "\$${widget.price}",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xff181725),
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          width: 360,
          decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: Color(0xffE2E2E2)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Product Detail",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.chevron_right),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            "Apples are nutritious.Apples may be good for weight loss.\nApples may be good for your heart.As part of a healtful\nAnd varied diet.",
            style: TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          width: 360,
          decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: Color(0xffE2E2E2)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Nutritions",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 200),
              width: 40,
              height: 22,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Color(0xffEBEBEB)),
              child: Center(
                child: Text(
                  "100gr",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff7C7C7C)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.chevron_right),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          width: 360,
          decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: Color(0xffE2E2E2)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Review",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 140),
              child: Image.asset("assets/images/Group 6834.png"),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.chevron_right),
            ),
          ],
        ),
        SizedBox(
          height: 20,
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
                  items.add(Cart(
                      image: widget.image,
                      title: widget.title,
                      subtitle: widget.subtitle,
                      price: widget.price,
                      count: count));
                  // debugPrint(items.toString());
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavPage(
                                myindex: 1,
                              )));
                },
                child: Text(
                  "Add To Basket",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
        ),
      ]),
    );
  }
}
