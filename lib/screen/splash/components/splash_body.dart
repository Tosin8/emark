
// ignore_for_file: use_build_context_synchronously

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  //  final List<List<String>> carousel = [
  //   ['assets/images/splash/4.jpg', 'Find your best outfit\n and look good', 'Shop now and get value\n for your quality products'], 
  //   ['assets/images/splash/6.jpg', 'Choosing a signature\n fragrance is profoundly','From timeless, iconic classic \n to modern niche favorites'], 
  //   ['assets/images/splash/7.jpg', 'Transform your home\n into inspiring spaces','Shop for all elements that\n shapes an interior landscape'], 

  // ]; 




@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: PageView(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/splash/4.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Find your best outfit\n and look good', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700),textAlign: TextAlign.center,), 
                  SizedBox(height: 8), 
                  Text('Shop now and get value\n for your quality products', style: TextStyle(color: Colors.white, fontSize: 18),textAlign: TextAlign.center,), 
                  SizedBox(height: 80), 
                ],
              ),
            ), 
             Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/splash/6.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
                 child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Choosing a signature\n fragrance is profoundly', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700),textAlign: TextAlign.center,), 
                  SizedBox(height: 8), 
                  Text('From timeless, iconic classic \n to modern niche favorites', style: TextStyle(color: Colors.white, fontSize: 18),textAlign: TextAlign.center,), 
                  SizedBox(height: 80), 
                ],
              ),
            ),
             Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/splash/7.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
               child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Transform your home\n into inspiring spaces', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w700),textAlign: TextAlign.center,), 
                  SizedBox(height: 8), 
                  Text('Shop for all elements that\n shapes an interior landscape', style: TextStyle(color: Colors.white, fontSize: 18),textAlign: TextAlign.center,), 
                  SizedBox(height: 80), 
                ],
              ),
            ),  
          ],
        )
     ) , 
     ); 
  }
}