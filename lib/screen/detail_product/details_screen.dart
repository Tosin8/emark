

import 'package:flutter/material.dart';

import '../../models/popular_product.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details'; 
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(padding: const EdgeInsets.only(left: 20), 
        child: IconButton(
          onPressed: Navigator.pop(context), 
          icon: Icon(Icons.arrow_back_ios)),
      ),
     ) );
  }
}


// using name route , making the need to create a arguments class. 

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product}); 

}