import 'package:flutter/material.dart';

class Product {
  final int id, price, size;
  final String image, title, description;
  final Color color;

  Product({
    required this.id,
    required this.price,
    required this.size,
    required this.image,
    required this.title,
    required this.description,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 8,
    description: dummyText,
    image: "assets/images/bag_1.png",
    color: Color(0xFF3D82AE),
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_2.png",
    color: Color(0xFFD3A984),
  ),
  Product(
    id: 3,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_3.png",
    color: Color(0xFF989493),
  ),
  Product(
    id: 4,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_4.png",
    color: Color(0xFFE6B398),
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_5.png",
    color: Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

const String dummyText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
    "Phasellus nec iaculis mauris.";
