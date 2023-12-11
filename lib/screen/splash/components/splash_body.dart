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
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: const AssetImage(
              'assets/images/splash/4.jpg',
            ),
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.modulate),
            fit: BoxFit.cover,
          )),
        ),
      ]),
    );
  }
}
