import 'package:deshimart/cart_container.dart';
import 'package:deshimart/cart_data.dart';
import 'package:deshimart/order.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  num totalprice = 0;
  @override
  void initState() {
    super.initState();
    for (var element in items) {
      num total = element.count * element.price;
      totalprice = totalprice + total;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "My Cart",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff181725),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final newData = items[index];
                return CartContainer(
                  oncancel: () {
                    items.removeAt(index);
                    totalprice = 0;
                    for (var element in items) {
                      num total = element.count * element.price;
                      totalprice = totalprice + total;
                    }
                    setState(() {});
                  },
                  onadd: () {
                    items[index].count++;
                    totalprice = 0;
                    for (var element in items) {
                      num total = element.count * element.price;
                      totalprice = totalprice + total;
                    }
                    setState(() {});
                  },
                  onmin: () {
                    if (items[index].count > 1) {
                      items[index].count--;
                    }
                    totalprice = 0;
                    for (var element in items) {
                      num total = element.count * element.price;
                      totalprice = totalprice + total;
                    }
                    setState(() {});
                  },
                  image: newData.image,
                  title: newData.title,
                  subtitle: newData.subtitle,
                  price: newData.price,
                  count: newData.count,
                );
              },
            ),
          ),
          SizedBox(
            height: 140,
          ),
          SizedBox(
            width: 364,
            height: 67,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff53B175),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Order()));
                },
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 90),
                      child: Text(
                        "Go to Checkout",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFCFCFC)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      width: 40,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: Color(0xff489E67)),
                      child: Center(
                        child: Text(
                          "\$$totalprice",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffFCFCFC)),
                        ),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
