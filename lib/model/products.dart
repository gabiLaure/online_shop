import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
      required this.id,
      required this.color,
      required this.price,
      required this.size,
      required this.title,
      required this.description});
}

List<Product> products = [
  Product(
      id: 1,
      image: "assets/images/bag8.png",
      color: Color.fromARGB(255, 243, 181, 180),
      price: 250,
      title: "Office handbag",
      size: 10,
      description: "dummyText"),
  Product(
      id: 2,
      image: "assets/images/bag6.png",
      color: Color.fromARGB(242, 110, 109, 110),
      price: 250,
      title: "Outing handbag",
      size: 10,
      description: "dummyText"),
  Product(
      id: 3,
      image: "assets/images/bag5.png",
      color: Color.fromARGB(166, 131, 67, 67),
      price: 250,
      title: "Walking handbag",
      size: 10,
      description: "dummyText"),
  Product(
      id: 4,
      image: "assets/images/bag9.png",
      color: Color.fromARGB(255, 235, 143, 101),
      price: 250,
      title: "Office handbag",
      size: 10,
      description: "dummyText"),
  Product(
      id: 4,
      image: "assets/images/bag10.png",
      color: Color.fromARGB(255, 238, 159, 227),
      price: 250,
      title: "Office handbag",
      size: 10,
      description: "dummyText"),
  Product(
      id: 4,
      image: "assets/images/bag8.png",
      color: Color.fromARGB(255, 243, 181, 180),
      price: 250,
      title: "Office handbag",
      size: 10,
      description: "dummyText"),
  Product(
      id: 4,
      image: "assets/images/bag8.png",
      color: Color.fromARGB(255, 243, 181, 180),
      price: 250,
      title: "Office handbag",
      size: 10,
      description: "dummyText"),
  Product(
      id: 4,
      image: "assets/images/bag8.png",
      color: Color.fromARGB(255, 243, 181, 180),
      price: 250,
      title: "Office handbag",
      size: 10,
      description: "dummyText")
];
