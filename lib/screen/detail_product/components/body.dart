import 'package:flutter/material.dart';

import '../../../models/popular_product.dart';

class DetailBody extends StatelessWidget {
  final Product product; 
  const DetailBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 200,
          child: AspectRatio(
            aspectRatio: 1, 
            child: Image.asset(product.images[0]), 
            ),
        ), 
        Row(
          children: [
            Container(
              height: 40, width: 40, decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)
              ),
            )
          ],
        )
      ],
    );
  }
}