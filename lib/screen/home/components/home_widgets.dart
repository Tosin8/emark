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
