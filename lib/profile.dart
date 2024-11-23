import 'package:deshimart/login.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, top: 50),
                width: 70,
                height: 70,
                child: const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/images/profileimage.jpg"),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, top: 40),
                        child: const Text(
                          "Syed Azam Taji",
                          style:
                              TextStyle(fontSize: 21, color: Color(0xff181725)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40, left: 10),
                        child: const Icon(
                          Icons.create,
                          color: Color(0xff53B175),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "azam0300@gmail.com",
                      style: TextStyle(fontSize: 16, color: Color(0xff7C7C7C)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 413,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xffE2E2E2))),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text(
              "Orders",
              style: TextStyle(fontSize: 18, color: Color(0xff181725)),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              width: 413,
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: const Color(0xffE2E2E2)))),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.article),
            title: Text(
              "My Details",
              style: TextStyle(fontSize: 18, color: Color(0xff181725)),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              width: 413,
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: const Color(0xffE2E2E2)))),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.location_on),
            title: Text(
              "Delivery Address",
              style: TextStyle(fontSize: 18, color: Color(0xff181725)),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              width: 413,
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: const Color(0xffE2E2E2)))),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.payment),
            title: Text(
              "Payment Methods",
              style: TextStyle(fontSize: 18, color: Color(0xff181725)),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              width: 413,
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: const Color(0xffE2E2E2)))),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text(
              "Promo Cord",
              style: TextStyle(fontSize: 18, color: Color(0xff181725)),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              width: 413,
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: const Color(0xffE2E2E2)))),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              "Notifecations",
              style: TextStyle(fontSize: 18, color: Color(0xff181725)),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              width: 413,
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: const Color(0xffE2E2E2)))),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.help),
            title: Text(
              "Help",
              style: TextStyle(fontSize: 18, color: Color(0xff181725)),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              width: 413,
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: const Color(0xffE2E2E2)))),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            leading: Icon(Icons.error),
            title: Text(
              "About",
              style: TextStyle(fontSize: 18, color: Color(0xff181725)),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              width: 413,
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 1, color: const Color(0xffE2E2E2)))),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: SizedBox(
              width: 364,
              height: 67,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF2F3F2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Icon(
                          Icons.logout,
                          color: Color(0xff53B175),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 110),
                        child: const Center(
                          child: Text(
                            "Log Out",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff53B175),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
