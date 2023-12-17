
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  final controller = PageController(); 
  @override 
  void dispose() {
    controller.dispose(); 
    super.dispose(); 
  }

  List<CarouselItem> itemList = [
    CarouselItem(
      image: const AssetImage('assets/images/splash/4.jpg'), 
     
        
      
    ), 
    CarouselItem(
      image: const AssetImage('assets/images/splash/6.jpg'), 
    
        
      ), 
    CarouselItem(
      image: const AssetImage('assets/images/splash/7.jpg'), 
     
    ), 
  ]; 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
       
       CustomCarouselSlider(
        items: itemList, 
        height: MediaQuery.of(context).size.height, 
        width: MediaQuery.of(context).size.width,
        autoplay: true, 
      showSubBackground: false,
       
       animationCurve: Curves.easeIn, 
       animationDuration: const Duration(milliseconds: 300),
       autoplayDuration: const Duration(seconds: 3),
         ), 
        Padding(
          padding: const EdgeInsets.only(top: 400),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                
                  children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 10), 
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end, 
                        children: [Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: GestureDetector(
                            onTap: (){},
                            child: const Text('Skip', style: TextStyle(fontSize: 16),)),
                        )],
                      ),
                    ), 
                    const SizedBox(height: 8), 
                    Expanded(
                      child: PageView(
                        controller: controller,
                        children:[
                        
                           Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'Find your best outfit\n and look good',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Shop now and get value \nfor your quality products',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5), fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),
                           
                           
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'Choosing a signature \n fragrance is profoundly',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'From timeless, iconic classics \n to modern niche favorites',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5), fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),
                           
                          
                          ],
                        ),
                          Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'Transform your home \n into inspiring spaces',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Shop for all elements that\n shapes an interior landscape',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5), fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 20),
                           
                          
                          ],
                        ),
                        
                               ] ),
                    ),
                    Center(child: SmoothPageIndicator(controller: controller, count: 3,effect: const ScaleEffect(dotColor: Colors.black26, activeDotColor: Colors.blueAccent, radius: 10,dotWidth: 8, dotHeight: 8),),), 
                    const SizedBox(height: 10), 
                     Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Align(
                                  child: Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              )),
                            ),
                              const SizedBox(height: 20),
                  ],
                )),
          ),
        ),
      ]),
    );
  }
}
