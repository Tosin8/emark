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
    return  const SafeArea(
        child: SingleChildScrollView(
            child: Column(
      children: [
        SizedBox(height: 20),
        HomeHeader(),
        SizedBox(height: 20),
        DiscountBanner(),
        SizedBox(height: 20),
        Categories(),
        SizedBox(height: 30),
        SpeicialOffers(),
        SizedBox(height: 20),
     
      ],
    ),
    ),
    
    
    );
  }
}
