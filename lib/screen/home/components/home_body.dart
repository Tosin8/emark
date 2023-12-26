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
       
    const PopularProducts(), 
    const SizedBox(height: 20), 
    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text('Our Collections', style: TextStyle(fontSize: 18),),
    ), 
    const SizedBox(height: 20), 
    Expanded(
      child: GridView.count(
        crossAxisCount: 2, 
        primary: false, 
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10, 
        mainAxisSpacing: 10,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:  AssetImage('assets/images/supermarket.jpg')
                ), 
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:  AssetImage('assets/images/supermarket.jpg')
                ), 
            ),
          ),Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:  AssetImage('assets/images/supermarket.jpg')
                ), 
            ),
          ), 
        ],),
    ),
     
      ],
    ),
    ),
    
    
    );
  }
}

