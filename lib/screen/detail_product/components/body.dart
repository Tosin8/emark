import 'package:flutter/material.dart';

import '../../../models/popular_product.dart';
import 'product_images.dart';

class DetailBody extends StatefulWidget {
  final Product product; 
  const DetailBody({super.key, required this.product});

  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: widget.product),
        TopRoundedContainer(
          color: Colors.white, 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), 
              child: Text(
                product.title, ),
            )
          ]
        ))
      ],
    );
  }
}

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    super.key, required this.color, required this.child,
  });

  final Color color; 
  final Widget child; 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, 
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        
        color: color, 
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
           topRight: Radius.circular(40), 
        )
      ),
      child: child,
    );
  }
}

