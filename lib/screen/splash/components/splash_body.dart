import 'dart:ffi';

import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';

import 'splash_widget.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  List<dynamic> _shopping = [
    {
      'title': 'Find your best outfit \n and look good',
      'subtitle': 'Shop now and get value \n for your quality products',
      'image': 'assets/images/splash/4.jpg',
    },
    {
      'title': 'Get your interior home \n a top notch',
      'subtitle': 'Shop now and get value \n for your quality products',
      'image': 'assets/images/splash/5.jpg',
    },
    {
      'title': 'Find your best outfit \n and look good',
      'subtitle': 'Shop now and get value \n for your quality products',
      'image': 'assets/images/splash/6.jpg',
    },
    {
      'title': 'Find your best outfit \n and look good',
      'subtitle': 'Shop now and get value \n for your quality products',
      'image': 'assets/images/splash/2.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView.builder(
        onPageChanged: (int index) {
          _controller.value = 0.0;
          _controller.forward();
        },
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/images/splash/4.jpg',
              ),
              // colorFilter: ColorFilter.mode(
              //     Colors.white.withOpacity(0.8), BlendMode.modulate),
              fit: BoxFit.cover,
            )),
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
                  )),
            ),
          ),
        ]),
      ),
    );
  }
}
