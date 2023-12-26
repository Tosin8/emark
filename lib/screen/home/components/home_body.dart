import 'package:emark/screen/home/categories/phone/topdeals.dart';
import 'package:flutter/material.dart';

import '../categories/appliance/topdeals.dart';
import '../categories/category/categories.dart';

import '../categories/collection/collection_card.dart';
import 'discount_banner.dart';
import 'header.dart';

import 'popular_products.dart';
import 'special_offers.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return   const SafeArea(
        child: SingleChildScrollView(
            child: Column(
      children:  [
        SizedBox(height: 20),
        HomeHeader(),
        SizedBox(height: 20),
        DiscountBanner(),
        SizedBox(height: 20),
        Categories(),
        SizedBox(height: 30),
        SpeicialOffers(),
        SizedBox(height: 20),
       
    PopularProducts(), 
    SizedBox(height: 20), 
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text('Our Collections', style: TextStyle(fontSize: 18),),
    ), 
    //const SizedBox(height: 2), 
    CollectionCard(),
    SizedBox(height: 20), 
     
    
    ApplianceTopDeals(), 
    SizedBox(height: 20), 
    PhonesTopDeals(), 
    
     
      ],
    ),
    ),
    
    
    );
  }
}

