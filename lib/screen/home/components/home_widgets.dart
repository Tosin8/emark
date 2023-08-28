import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconBtwCounter extends StatelessWidget {
  const IconBtwCounter({
    super.key,
    required this.svgSrc,
    required this.numOfItems,
    required this.press,
  });

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: Stack(children: [
        Container(
          padding: const EdgeInsets.all(12),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.7),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(svgSrc),
        ),
        if (numOfItems != 0)
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  '$numOfItems',
                  style: const TextStyle(
                      fontSize: 10,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
      ]),
    );
  }
}

class searchField extends StatelessWidget {
  const searchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        onChanged: (value) {
          // search value.
        },
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search Products',
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        ));
  }
}

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
          color: const Color(0xff4a3298),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text.rich(TextSpan(
            text: 'A Summer Surprise\n',
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                  text: 'CashBack 20%',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ])));
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
      {'icon': 'assets/icons/game_icon.svg', 'text': 'Game'},
      {'icon': 'assets/icons/gift_icon.svg', 'text': 'Dolly Gift'},
      {'icon': 'assets/icons/discover.svg', 'text': 'Flash Deal'},
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoryCard(
                  icon: categories[index]['icon'],
                  text: categories[index]['text'],
                  press: () {}))
        ],
      ),
    );

    //CategoryCard(categories: categories);
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

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.text,
    required this.press,
  });

  final String text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
          GestureDetector(onTap: press, child: Text('See More')),
        ],
      ),
    );
  }
}
