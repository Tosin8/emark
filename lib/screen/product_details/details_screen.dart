import 'package:emark/models/product.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: SizedBox(
              height: 40,
              width: 40,
              child: GestureDetector(
                  onTap: () {}, child: const Icon(Icons.arrow_back_ios)))),
    );
  }
}

// the need to pass the product to details screen , also to use name route to create a aarguments class.

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
