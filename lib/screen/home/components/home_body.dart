import 'package:emark/models/product.dart';
import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';

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
        SectionTitle(
          text: 'Popular Products',
         press: (){}), 
    SizedBox(
      width: 140, 
      child: Column(
        children: [
          AspectRatio(aspectRatio: 1.02, 
          child: Container(
            padding: EdgeInsets.all(20), 
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1), 
              borderRadius: BorderRadius.circular(15), 

            ),
            child: Image.asset(demoProducts[0].images[0]),

          ),), 
          Text(
            demoProducts[0].title,
             style: TextStyle(color: Colors.black),
             maxLines: 2,
          ), 
          Text('${demoProducts[0].price}', style: TextStyle())

        ],
      )
    )
     
      ],
    ),
    ),
    
    
    );
  }
}
