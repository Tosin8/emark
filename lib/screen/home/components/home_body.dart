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
        SizedBox(height: 20),
        HomeHeader(),
        SizedBox(height: 20),
        DiscountBanner(),
        SizedBox(height: 20),
        Categories(),
      ],
    )));
  }
}

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
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'icon': 'assets/icons/flash_icon.svg', 'text': 'Flash Deal'},
      {'icon': 'assets/icons/bill_icon.svg', 'text': 'Bill'},
      {'icon': 'assets/icon/game_icon.svg', 'text': 'Game'},
      {'icon': 'assets/icons/gift_icon.svg', 'text': 'Flash Deal'},
      {'icon': 'assets/icons/discover.svg', 'text': 'Flash Deal'},
    ];
    return CategoryCard(categories: categories);
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });

  //final List<Map<String, dynamic>> categories;

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
          width: 50,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xffffecdf),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(icon),
                  //(categories[0]['icon']),
                ),
              ),
              SizedBox(height: 5),
              Text(
                text,
                // categories[0]['text'],
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}
