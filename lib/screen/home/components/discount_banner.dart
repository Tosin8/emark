import 'package:flutter/material.dart';

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
        height:180,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/images/banner.png'), 
              fit: BoxFit.cover
          ),
          //color: const Color(0xff4a3298),
          borderRadius: BorderRadius.circular(20),
          
        ),
        // child: const Text.rich(TextSpan(
        //     text: 'A Summer Surprise\n',
        //     style: TextStyle(color: Colors.white),
        //     children: [
        //       TextSpan(
        //           text: 'CashBack 20%',
        //           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        //     ])
        //     )
        );
  }
}