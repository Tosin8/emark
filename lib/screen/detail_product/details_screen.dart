

import 'package:emark/screen/detail_product/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/popular_product.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details'; 
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final ProductDetailsArguments arguments = 
    // ModalRoute.of(context)?.settings.arguments; 


final arguments = ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      appBar: AppBar(
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
                    const Text('4.5', style: TextStyle(fontWeight: FontWeight.w600),), 
                    const SizedBox(width: 5), 
                    SvgPicture.asset('assets/icons/star_icon.svg')
                  ],
                )
              ),
              const SizedBox(width: 20,)
          ],
        ),
        body: DetailBody(
          product: 
          arguments.product, 
          
          ), 
      );
     
  }
}


// using name route , making the need to create a arguments class. 

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments(this.product); 

}