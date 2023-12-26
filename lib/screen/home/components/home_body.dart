import 'package:emark/models/top_deals/appliances.dart';
import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';

import '../../../models/top_deals/appliances.dart';
import 'categories.dart';
import 'collection_card.dart';
import 'discount_banner.dart';
import 'header.dart';

import 'popular_products.dart';
import 'sectiontitle.dart';
import 'special_offers.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
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
       
    const PopularProducts(), 
    const SizedBox(height: 20), 
    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text('Our Collections', style: TextStyle(fontSize: 18),),
    ), 
    //const SizedBox(height: 2), 
    const CollectionCard(),
    const SizedBox(height: 20), 
    SectionTitle(text: 'Appliances Top Deals', press: (){}), 
    const SizedBox(height: 20), 
    const ApplianceTopCard(), 
    
     
      ],
    ),
    ),
    
    
    );
  }
}

class ApplianceTopCard extends StatelessWidget {
  const ApplianceTopCard({
    super.key, 
  this.width = 140,
   this.aspectRatio = 1.02, 
 required this.htopappliance, 
   });

final double width, aspectRatio; 
final hTopAppliance htopappliance; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20), 
      child: SizedBox(width: width, child: Column(
        children: [
          AspectRatio(aspectRatio: aspectRatio, child: Container(padding: const EdgeInsets.all(20), 
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.2), 
            borderRadius: BorderRadius.circular(15),
          ),),)
        ],
      ),),
    );
  }
}