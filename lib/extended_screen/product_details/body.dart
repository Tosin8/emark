import 'package:flutter/material.dart';

import '../../models/popular_product.dart';

class DetailScreenBody extends StatelessWidget {
  final Product product;
  const DetailScreenBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: 238,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(product.images[0]),
            ))
      ],
    );
  }
}
