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
    
     
      ],
    ),
    ),
    
    
    );
  }
}

class CollectionCard extends StatelessWidget {
  const CollectionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: GridView.count(
          crossAxisCount: 3, 
          primary: false, 
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10, 
          mainAxisSpacing: 5,
          children: [
            Collections(
              image: 'assets/images/supermarket.jpg',
              text: 'Supermarket Deals', 
              press: () {  },
               ),
    
    Collections(
              image: 'assets/images/electronic.jpg',
              text: 'Electronic \nDeals', 
              press: () {  },
               ),
               Collections(
              image: 'assets/images/appliance.jpg',
              text: 'Appliance \nDeals', 
              press: () {  },
               ),Collections(
              image: 'assets/images/beauty.jpg',
              text: 'Beauty \nDeals', 
              press: () {  },
               ),Collections(
              image: 'assets/images/phone.jpg',
              text: 'Phone Deals', 
              press: () {  },
               ),
               Collections(
              image: 'assets/images/fashion.jpg',
              text: 'Fashion \nDeals', 
              press: () {  },
               ),Collections(
              image: 'assets/images/fitness.jpg',
              text: 'Fitness \nDeals', 
              press: () {  },
               ),Collections(
              image: 'assets/images/gaming.jpg',
              text: 'Gaming \nDeals', 
              press: () {  },
               ),Collections(
              image: 'assets/images/power.jpg',
              text: 'Power \nDeals', 
              press: () {  },
               ),
             
           
          ],),
    );
  }
}

