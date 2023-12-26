import 'package:flutter/material.dart';

import 'icon_counter.dart';
import 'searchfield.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xff979797).withOpacity(0.1),
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
    );
  }
}
