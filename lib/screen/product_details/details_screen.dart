import 'package:emark/models/product.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f6f9),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: RoundedIconBtn(
            iconData: Icons.arrow_back_ios,
            press: () => Navigator.pop(context),
          ),
        ));
  }
}

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    super.key,
    required this.iconData,
    required this.press,
  });

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: 40,
        child: GestureDetector(
            onTap: press,
            child: Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(iconData))));
  }
}

// the need to pass the product to details screen , also to use name route to create a aarguments class.

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
