
// ignore_for_file: use_build_context_synchronously

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
   final List<List<String>> carousel = [
    ['assets/images/splash/4.jpg', 'Find your best outfit\n and look good', 'Shop now and get value\n for your quality products'], 
    ['assets/images/splash/6.jpg', 'Choosing a signature\n fragrance is profoundly','From timeless, iconic classic \n to modern niche favorites'], 
    ['assets/images/splash/7.jpg', 'Transform your home\n into inspiring spaces','Shop for all elements that\n shapes an interior landscape'], 

  ]; 


  int currentIndex = 0; 

@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [

          PageView(
            children:[ FadeInUp(
              duration: Duration(milliseconds: 800),
              child: Container(
                width: double.infinity, 
                height: double.infinity, 
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                  
                  carousel[currentIndex][0]), 
                fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 400), 
                  child: Padding(padding: const EdgeInsets.all(8.0), 
                  child:  Column(
                      children: [
                        Padding(padding: const EdgeInsets.only(top: 10), 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(padding: const EdgeInsets.only(right: 25.0), 
                            child: GestureDetector(
                              onTap: () {
                                
                              },
                              child: const Text('Skip', style: TextStyle(fontSize: 16),
                              ),
                            ),)],
                        ),), 
                        const SizedBox(height: 8), 
                        Expanded(
                          child: FadeInUp(
                            duration:  Duration(milliseconds: 1000),
                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              carousel[currentIndex][1], 
                          style: const TextStyle(
                            color: Colors.black,
                             fontSize: 23,
                              fontWeight: FontWeight.w700), 
                          textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            carousel[currentIndex][2], style: TextStyle(color: Colors.black.withOpacity(0.5), 
                          fontSize: 16), 
                          textAlign: TextAlign.center,), 
                          const SizedBox(height: 20), 
                           
                        ],
                       ),
              ),
            ),
         ]
         ) 
         ))
         )
        
        )])

             
  
        ])); 
  }}