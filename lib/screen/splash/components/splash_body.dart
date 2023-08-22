import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';

import 'splash_widget.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: const AssetImage(
                  'assets/images/splash/1.jpg',
                ),
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.8), BlendMode.modulate),
                fit: BoxFit.cover,
              )),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        stops: const [
                      0.2,
                      0.9
                    ],
                        colors: [
                      Colors.black.withOpacity(.6),
                      Colors.black.withOpacity(.1),
                    ])),
              )),
          const Positioned(
            left: 80,
            top: 400,
            child: Column(
              children: [
                Text(
                  'EMARK',
                  style: Splash_textStyle,
                ),
                Divider(
                    height: 5,
                    color: Colors.white,
                    thickness: 2,
                    indent: 80,
                    endIndent: 80),
                Text(
                  'Welcome to Emark!, \n Let\'s Shop',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SplashButton(),
        ],
      ),
    );
  }
}
