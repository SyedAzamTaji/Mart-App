import 'package:deshimart/mycart.dart';
import 'package:deshimart/order.dart';
import 'package:deshimart/product.dart';
import 'package:deshimart/profile.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  final int myindex;
  const BottomNavPage({super.key, this.myindex = 0});

  @override
  State<BottomNavPage> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNavPage> {
  late int myIndex;
  @override
  void initState() {
    super.initState();
    myIndex = widget.myindex;
  }

  final screens = [
    const ProductPage(),
    const MyCart(),
    const Order(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: myIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green.shade200,
          backgroundColor: Colors.white,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.trolley,
                  size: 30,
                ),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ),
                label: "Order"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                  size: 30,
                ),
                label: "Profile"),
          ]),
    );
  }
}
