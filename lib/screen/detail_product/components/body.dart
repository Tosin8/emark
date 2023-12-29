import 'package:emark/widgets/constants.dart';
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
    return ProductImages(product: widget.product);
  }
}

