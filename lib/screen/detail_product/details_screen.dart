

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/popular_product.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details'; 
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height), 
        
        child: 4.6,
        ),
      );
     
  }
}

class CustomAppBar extends PreferredSize {
  final double rating; 
  const CustomAppBar(this.rating, {
    super.key, required super.preferredSize, required super.child,
  });

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: 
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: IconButton(
              onPressed:()=> Navigator.pop(context), 
              icon: const Icon(Icons.arrow_back_ios), 
              ),
          ),     
      actions: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5), 
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white, 
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 1, blurRadius: 2)
              ]),
    
              child: Row(
                children: [
                  Text(
                    
                    rating.toString(), 
                    style: const TextStyle(fontWeight: FontWeight.w600),), 
                  const SizedBox(width: 5), 
                  SvgPicture.asset('assets/icons/star_icon.svg')
                ],
              )
            ),
            const SizedBox(width:30,)
        ],
      );
  }
}


// using name route , making the need to create a arguments class. 

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product}); 

}