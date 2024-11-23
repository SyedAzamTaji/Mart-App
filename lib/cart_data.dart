import 'package:flutter/material.dart';


class Cart {
  final AssetImage image;
  final String title;
  final String subtitle;
  final num price;
  int count;

  Cart(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.count});
}

List<Cart> items = [];
