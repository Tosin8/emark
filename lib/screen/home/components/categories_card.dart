import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                    color: const Color(0xffffecdf),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(icon),
                  //(categories[0]['icon']),
                ),
              ),
              const SizedBox(height: 5),
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