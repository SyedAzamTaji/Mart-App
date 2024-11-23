import 'package:flutter/material.dart';

class CartContainer extends StatefulWidget {
  final AssetImage image;
  final String title;
  final String subtitle;
  final num price;
  final int count;
  final void Function() onadd;
  final void Function() onmin;
  final void Function() oncancel;

  CartContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.count,
      required this.onadd,
      required this.onmin,
      required this.oncancel});

  @override
  State<CartContainer> createState() => _CartContainerState();
}

class _CartContainerState extends State<CartContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          width: 360,
          decoration: BoxDecoration(
            border: Border.all(width: 0.1, color: Color(0xffE2E2E2)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              height: 75,
              width: 70,
              margin: EdgeInsets.only(left: 20),
              decoration:
                  BoxDecoration(image: DecorationImage(image: widget.image)),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    widget.title,
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff181725),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 70),
                  child: Text(
                    widget.subtitle,
                    style: TextStyle(fontSize: 16, color: Color(0xff7C7C7C)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: widget.onmin,
                      child: Container(
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
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(17)),
                          border:
                              Border.all(width: 1, color: Color(0xffE2E2E2))),
                      child: Center(
                          child: Text(
                        "${widget.count}",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181725)),
                      )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: widget.onadd,
                      child: Container(
                        child: Icon(
                          Icons.add,
                          size: 25,
                          color: Color(0xff53B175),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 80,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: widget.oncancel,
                  child: Container(
                    child: const Icon(
                      Icons.close_rounded,
                      color: Color(0xffB3B3B3),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  child: Text(
                    "\$${widget.price}",
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff181725)),
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
