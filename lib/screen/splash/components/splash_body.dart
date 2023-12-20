
// ignore_for_file: use_build_context_synchronously

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


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
final controller = PageController(); 
bool isLastPage = false;

@override
void dispose() {
  controller.dispose(); 
  super.dispose(); 
}



@override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children:[
           Container(
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2; 
              });
            },
            children: [
              FadeIn(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/splash/4.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: FadeInUp(
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
                ),
              ), 
               FadeIn(
                 child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/splash/6.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                     child: FadeInUp(
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
                               ),
               ),
               FadeIn(
                 child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/splash/7.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                   child: FadeInUp(
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
                               ),
               ),  
            ],
          )
             ),
             
              Align(
                alignment: Alignment.bottomCenter,
                
                 child: isLastPage ? TextButton (
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, shape: RoundedRectangleBorder( 
                  ), backgroundColor: Colors.teal.shade700, minimumSize: const Size.fromHeight(60), 
                  ),
                  
                  child: const Text('Get Started', 
                  style: TextStyle(fontSize: 20),
                  ),
                  onPressed:()async {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage())); 
                  }, ):
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                      children: [
                      TextButton(onPressed: (){
                        controller.jumpToPage(2); 
                      }, 
                      child: const Text('Skip', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),)),
                     // Center(child: )
                     SmoothPageIndicator(controller: controller, count: 3,
                      effect: const WormEffect(dotColor: Colors.white, dotHeight: 15, dotWidth: 8),
                      ),
                      
                  TextButton(onPressed: (){
                    controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
                  }, 
                      child: const Text('Next', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700, fontSize: 18),)),
                    ],
                    )
                    )
      )]));
               
                 
        
             
              
      
      
  }
}