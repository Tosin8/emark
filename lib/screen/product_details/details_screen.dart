import 'package:flutter/material.dart';

import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff5f6f9),
        leading: SizedBox(
            height: 40,
            width: 40,
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.arrow_back_ios),
            )),
      ),
    );
  }
}

// the need to pass the product to the details screen, and to name the roue to create an arguments class.

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
