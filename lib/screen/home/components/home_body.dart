import 'package:emark/widgets/constants.dart';
import 'package:emark/widgets/size_config.dart';
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const searchField(),
              ),
              IconBtwCounter(
                svgSrc: 'assets/icons/cart_icon.svg',
                numOfItems: 1,
                press: () {},
              ),
              IconBtwCounter(
                svgSrc: 'assets/icons/bell.svg',
                numOfItems: 3,
                press: () {},
              ),
            ],
          ),
        )
      ],
    )));
  }
}
