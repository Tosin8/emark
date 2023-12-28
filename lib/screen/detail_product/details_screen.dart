

import 'package:flutter/material.dart';

import '../../models/popular_product.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details'; 
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}


// using name route , making the need to create a arguments class. 

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product}); 

}