import 'package:flutter/material.dart';

import '../../../models/popular_product.dart';
import '../../../widgets/constants.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImages = 0; 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 200,
          child: AspectRatio(
            aspectRatio: 1, 
            child: Image.asset(widget.product.images[selectedImages]), 
            ),
        ), 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ...List.generate(widget.product.images.length,
           (index) => buildSmallPreview(index), 
           )
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: (){
        setState((){
          selectedImages = index; 
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 15), 
      
              padding: EdgeInsets.all(8), 
              height: 40, width: 40,
               decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(10), 
                border: Border.all(
                  color: selectedImages == index ? 
                   kPrimaryColor : Colors.transparent)
              ),
              child: Image.asset(widget.product.images[index]), 
            ),
    );
  }
}