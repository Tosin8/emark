import 'package:emark/models/popular_product.dart';
import 'package:flutter/material.dart';

import '../../../widgets/product_card.dart';
import 'sectiontitle.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SectionTitle(
          text: 'Popular Products',
         press: (){}), 
         const SizedBox(height: 20), 
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
    );
  }
}
