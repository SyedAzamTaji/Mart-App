import 'package:deshimart/container.dart';
import 'package:deshimart/container1.dart';
import 'package:deshimart/datagrocery.dart';

import 'package:deshimart/exlusivedata.dart';
import 'package:deshimart/grocerycontainer.dart';
import 'package:deshimart/productdata.dart';
import 'package:deshimart/profile.dart';
import 'package:deshimart/red_apple.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, top: 30),
                    child: Image.asset("assets/images/Group 6908.png"),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: const Icon(
                    Icons.location_on_rounded,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: const Text(
                      "Pakistan,Karachi",
                      style: TextStyle(fontSize: 22, color: Colors.grey),
                    ))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 370,
              height: 51,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF2F3F2),
                    hintText: "Search Store",
                    hintStyle:
                        const TextStyle(fontSize: 16, color: Color(0xff7C7C7C)),
                    suffixIcon: const Icon(
                      Icons.search_outlined,
                      size: 40,
                      color: Color(0xff53B175),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(width: 2))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 370,
              height: 115,
              child: Image.asset("assets/images/banner.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    "Exclusive Offer",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff181725)),
                  ),
                ),
                const SizedBox(
                  width: 140,
                ),
                Container(
                  child: const Text(
                    "See all",
                    style: TextStyle(fontSize: 18, color: Color(0xff53B175)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 274,
              width: 500,
              child: ListView.builder(
                itemCount: ExclusiveData.AssetsImages.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RedApple(
                                  image: AssetImage(
                                      ExclusiveData.AssetsImages[index]),
                                  title: ExclusiveData.Productname[index],
                                  subtitle:
                                      ExclusiveData.Productdescription[index],
                                  price: 4.99)));
                    },
                    child: ExclusiveContainer(
                        image: AssetImage(
                          ExclusiveData.AssetsImages[index],
                        ),
                        text1: ExclusiveData.Productname[index],
                        text2: ExclusiveData.Productdescription[index],
                        text3: "4.99"),
                  );
                },
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    "Best Selling",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff181725)),
                  ),
                ),
                const SizedBox(
                  width: 160,
                ),
                Container(
                  child: const Text(
                    "See all",
                    style: TextStyle(fontSize: 18, color: Color(0xff53B175)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 274,
              width: 500,
              child: ListView.builder(
                itemCount: ExclusiveData.AssetsImages.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ExclusiveContainer(
                      image: AssetImage(
                        SellingData.AssetsImages[index],
                      ),
                      text1: SellingData.Productname[index],
                      text2: SellingData.Productdescription[index],
                      text3: SellingData.Price[index]);
                },
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    "Groceries",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff181725)),
                  ),
                ),
                const SizedBox(
                  width: 170,
                ),
                Container(
                  child: const Text(
                    "See all",
                    style: TextStyle(fontSize: 18, color: Color(0xff53B175)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120,
              width: 500,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Grocerycontainer(
                      image: AssetImage(GroceryData.images[index]),
                      title: GroceryData.text[index],
                      color: GroceryData.colors[index]);
                },
                itemCount: GroceryData.images.length,
              ),
            ),
            SizedBox(
              height: 274,
              width: 500,
              child: ListView.builder(
                itemCount: Pdata.Assetsimage.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductContainer(
                      image: AssetImage(Pdata.Assetsimage[index]),
                      title: Pdata.text[index],
                      subtitle: Pdata.text2[index],
                      price: Pdata.text3[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
