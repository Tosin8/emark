import 'package:flutter/material.dart';

import 'categories_card.dart';

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

    
  }
}
