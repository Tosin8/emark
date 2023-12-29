import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';

import '../../../models/popular_product.dart';

class DetailBody extends StatefulWidget {
  final Product product; 
  const DetailBody({super.key, required this.product});

  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  @override
  Widget build(BuildContext context) {
    return ProductImages(product: widget.product);
  }
}

class ProductImages extends StatelessWidget {
  const ProductImages({
    super.key,
    required this.product,
  });

  final Product product;

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSmallPreview()
          ],
        )
      ],
    );
  }

  Container buildSmallPreview() {
    return Container(
            padding: EdgeInsets.all(8), 
            height: 40, width: 40,
             decoration: BoxDecoration(
              color: Colors.white, 
              borderRadius: BorderRadius.circular(10), 
              border: Border.all(color: kPrimaryColor)
            ),
            child: Image.asset(product.images[0]), 
          );
  }
}