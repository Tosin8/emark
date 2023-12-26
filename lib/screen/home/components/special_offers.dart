import 'package:flutter/material.dart';

import 'sectiontitle.dart';
import 'special_offerscard.dart';

class SpeicialOffers extends StatelessWidget {
  const SpeicialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Special for you',
          press: () {},
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                  image: 'assets/images/products/image_banner_2.png',
                  category: 'Smartphones',
                  numOfBrands: 18,
                  press: () {}),
              SpecialOfferCard(
                  image: 'assets/images/products/image_banner_3.png',
                  category: 'Fashion',
                  numOfBrands: 24,
                  press: () {}),
            ],
          ),
        ),
      ],
    );
  }
}