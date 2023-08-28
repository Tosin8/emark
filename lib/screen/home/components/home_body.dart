import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_widgets.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Column(
      children: [
        const SizedBox(height: 20),
        const HomeHeader(),
        const SizedBox(height: 20),
        const DiscountBanner(),
        const SizedBox(height: 20),
        const Categories(),
        const SizedBox(height: 30),
        SectionTitle(
          text: 'Special for you',
          press: () {},
        ),
        SpecialOfferCard()
      ],
    )));
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 242,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(children: [
            Image.asset('assets/images/products/image_banner_2.png',
                fit: BoxFit.cover),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    const Color(0xff343434).withOpacity(0.4),
                    const Color(0xff343434).withOpacity(0.15),
                  ])),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text.rich(
                TextSpan(style: TextStyle(color: Colors.white), children: [
                  TextSpan(
                      text: 'Smartphone\n',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(text: '18 Brands'),
                ]),
              ),
            ),
          ]),
        ));
  }
}
