import 'package:emark/models/product.dart';
import 'package:emark/widgets/constants.dart';
import 'package:emark/widgets/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widgets/product_card.dart';
import 'home_widgets.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: SingleChildScrollView(
            child: Column(
      children:  [
        const SizedBox(height: 20),
        const HomeHeader(),
        const SizedBox(height: 20),
        const DiscountBanner(),
        const SizedBox(height: 20),
        const Categories(),
        const SizedBox(height: 30),
        const SpeicialOffers(),
        const SizedBox(height: 20),
       
    Column(
      children: [
         SectionTitle(
          text: 'Popular Products',
         press: (){}), 
         SizedBox(height: 20), 
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length,
               (index) => ProductCard(
                product: demoProducts[index], 
                ), 
                ),
                const SizedBox(width: 20), 
            ],
          ),
        ),
      ],
    )
     
      ],
    ),
    ),
    
    
    );
  }
}

