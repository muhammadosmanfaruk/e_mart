import 'package:flutter/material.dart';

class Product{
  final String name;
  final double size;
  final String des;
  final String img;
  final bool isFav;

  Product({required this.name, required this.size, required this.des, required this.img, required this.isFav});
}
List<Product> product=[
  Product(
      name: "Shoes",
      size: 7.5,
      des: "Bangladeshi Shoes",
      img: "images/1.png",
      isFav: false,
  ),
  Product(
    name: "Bags",
    size: 9,
    des: "Bangladeshi Shoes",
    img: "images/2.png",
    isFav: false,
  ),
  Product(
    name: "Tools",
    size: 6.5,
    des: "Bangladeshi Shoes",
    img: "images/3.png",
    isFav: false,
  )
];