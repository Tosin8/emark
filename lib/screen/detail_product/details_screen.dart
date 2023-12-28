

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/popular_product.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details'; 
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed:()=> Navigator.pop(context), 
              icon: const Icon(Icons.arrow_back_ios), 
              ),
              Container(padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5), 
              decoration: BoxDecoration(color: Colors.white),

                child: Row(
                  children: [
                    Text('4.5', style: TextStyle(fontWeight: FontWeight.w600),), 
                    SizedBox(width: 5), 
                    SvgPicture.asset('assets/icons/star_icon.svg')
                  ],
                )
              )
          ],
        ),
      ),
     ) );
  }
}


// using name route , making the need to create a arguments class. 

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product}); 

}