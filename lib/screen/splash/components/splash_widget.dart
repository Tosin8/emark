import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
            0.2,
            0.9
          ], colors: [
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.1),
          ])),
        ));
  }
}

class SplashButton extends StatelessWidget {
  const SplashButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 80,
      top: 606,
      child: GestureDetector(
        onTap: () {
          print('pressed');
        },
        child: Container(
          width: 230,
          height: 40,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'CONTINUE',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
