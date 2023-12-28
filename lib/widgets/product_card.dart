import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/popular_product.dart';
import 'constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key, 
    this.width = 140, 
    this.aspectRatio = 1.02,
     required this.product, required this.press,
  });

final double width, aspectRatio; 
final Product product; 
final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector( 
        onTap: press,
        child: SizedBox(
          width: width, 
          child: Column(
            children: [
              AspectRatio(aspectRatio: aspectRatio, 
              child: Container(
                padding: const EdgeInsets.all(20), 
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.2), 
                  borderRadius: BorderRadius.circular(15), 
        
                ),
                child: Image.asset(product.images[0]),
        
              ),),
              const SizedBox(height: 5),  
              Text(
                product.title,
                 style: const TextStyle(color: Colors.black),
                 maxLines: 2,
              ), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$${product.price}', 
                  style: const TextStyle(
                    color: kPrimaryColor, 
                    fontWeight: FontWeight.w600,
                     fontSize: 18, 
                  )),
                  InkWell( 
                    borderRadius: BorderRadius.circular(30),
                    onTap: (){}, 
                    child: Container(
                      padding: const EdgeInsets.all(4), 
                      width: 28, height: 28,
                       decoration: BoxDecoration(
                        color: product.isFavorite ? kPrimaryColor.withOpacity(0.15): kSecondaryColor.withOpacity(0.4), 
                        shape: BoxShape.circle, 
                      ),
                      child: SvgPicture.asset('assets/icons/heart_Icon_2.svg', 
                      color: product.isFavorite ? const Color(0xffff4848): const Color(0xffdbdee4)),
                    ),
                  )
                ],
              )
        
            ],
          )
        ),
      ),
    );
  }
}
