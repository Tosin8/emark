import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavorite, isPopular;

  Product({
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    required this.rating,
    required this.price,
    required this.isFavorite,
    required this.isPopular,
  });
}

// demo products
List<Product> demoProducts = [
  Product(
    //id: 1,
    images: [
      "assets/images/products/ps4_console_white_1.png",
      // "assets/images/products/ps4_console_white_2.png",
      // "assets/images/products/ps4_console_white_3.png",
      // "assets/images/products/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    //id: 2,
    images: [
      "assets/images/products/image_popular_product_2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
    isFavorite: true,
  ),
  Product(
    //id: 3,
    images: [
      "assets/images/products/glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    // id: 4,
    images: [
      "assets/images/products/wireless_headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavorite: true,
    isPopular: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
