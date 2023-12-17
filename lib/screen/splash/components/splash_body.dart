
import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {

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
                child: PageView(
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
                      const SizedBox(height: 50),
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
                  ),
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
                      const SizedBox(height: 50),
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
                  ),
         ] )),
          ),
        ),
      ]),
    );
  }
}
