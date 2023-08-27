import 'package:emark/widgets/constants.dart';
import 'package:emark/widgets/size_config.dart';
import 'package:flutter/material.dart';

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
                child: TextField(
                    onChanged: (value) {
                      // search value.
                    },
                    decoration: const InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Search Products',
                      prefixIcon: Icon(Icons.search),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.7),
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
        )
      ],
    )));
  }
}
