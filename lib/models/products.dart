import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final double price;
  final String image;
  final String review;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.review,
    required this.colors,
    required this.category,
    required this.rate,
    required this.quantity,
  });

  static final List<Product> products = [
    Product(
        title: "Wireless Headphones",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.",
        price: 150,
        image: "assets/images/headphone.png",
        review: "(320 Reviews)",
        colors: [
          Colors.black,
          Colors.blue,
          Colors.red,
          Colors.green,
        ],
        category: "Electronics",
        rate: 4.8,
        quantity: 5),
    Product(
        title: "leather Women bag",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.",
        price: 135,
        image: "assets/images/bag.png",
        review: "(715 Reviews)",
        colors: [
          Colors.black,
          Colors.blue,
          Colors.red,
          Colors.green,
        ],
        category: "Bag",
        rate: 4.3,
        quantity: 13),
    Product(
        title: "Unisex Straw Hat",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.",
        price: 36,
        image: "assets/images/cap.png",
        review: "(270 Reviews)",
        colors: [
          Colors.black,
          Colors.blue,
          Colors.red,
          Colors.green,
        ],
        category: "Wearables",
        rate: 4.8,
        quantity: 5),
    Product(
        title: "Design Orange Vase",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.",
        price: 146,
        image: "assets/images/flower.png",
        review: "(2014 Reviews)",
        colors: [
          Colors.black,
          Colors.blue,
          Colors.red,
          Colors.green,
        ],
        category: "Plant",
        rate: 4.8,
        quantity: 5),
    Product(
        title: "Women Leather bag",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.",
        price: 250,
        image: "assets/images/bag2.png",
        review: "(150 Reviews)",
        colors: [
          Colors.black,
          Colors.blue,
          Colors.red,
          Colors.green,
        ],
        category: "Bag",
        rate: 4.8,
        quantity: 5),
    Product(
        title: "Retro Desk Clock",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.",
        price: 125,
        image: "assets/images/deskwatch.png",
        review: "(3720 Reviews)",
        colors: [
          Colors.black,
          Colors.blue,
          Colors.red,
          Colors.green,
        ],
        category: "Watch",
        rate: 4.8,
        quantity: 5),
    Product(
        title: "Pink Watch",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.",
        price: 28,
        image: "assets/images/pinkwatch.png",
        review: "(320 Reviews)",
        colors: [
          Colors.black,
          Colors.blue,
          Colors.red,
          Colors.green,
        ],
        category: "Watch",
        rate: 4.8,
        quantity: 5),
    Product(
        title: "Nike Shoes",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.",
        price: 80,
        image: "assets/images/nikeshoe.png",
        review: "(320 Reviews)",
        colors: [
          Colors.black,
          Colors.blue,
          Colors.red,
          Colors.green,
        ],
        category: "Electronics",
        rate: 4.8,
        quantity: 5),
    Product(
        title: "Smart Watch",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit.",
        price: 60,
        image: "assets/images/smartWatch.png",
        review: "(320 Reviews)",
        colors: [
          Colors.black,
          Colors.blue,
          Colors.red,
          Colors.green,
        ],
        category: "Watch",
        rate: 4.8,
        quantity: 5),
  ];
}
