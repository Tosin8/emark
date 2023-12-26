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
    //const SizedBox(height: 2), 
    AspectRatio(
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
    ),
    
     
      ],
    ),
    ),
    
    
    );
  }
}

class Collections extends StatelessWidget {
  const Collections({
    super.key, required this.image, required this.text, required this.press,
  });

final String image, text; 
final VoidCallback press; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press, 
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          
          decoration:  BoxDecoration(
            image: DecorationImage(
              image:  AssetImage(image), fit: BoxFit.cover
              ), 
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.4), Colors.black38.withOpacity(0.6),], 
              begin: Alignment.bottomCenter)
            ),
            child: Align(child: Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),textAlign: TextAlign.center,)),
          ),
        ),
      ),
    );
  }
}

