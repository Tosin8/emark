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
        const SpeicialOffers(),
        const SizedBox(height: 20),
        SectionTitle(text: 'Popular Product', press: () {}),
        Column(
          children: [
            SizedBox(
              width: 140,
              child: AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    )));
  }
}
