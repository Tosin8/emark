import 'package:flutter/material.dart';

import 'package:emark/widgets/constants.dart';

import '../../../../models/top_deals/phones.dart';

class PhoneHTopCard extends StatelessWidget {
  const PhoneHTopCard({
    super.key, 
  this.width = 140,
   this.aspectRatio = 1.02, 
 required this.htopphone, 
   });

final double width, aspectRatio; 
final hTopPhone htopphone; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20), 
      child: SizedBox(width: width, child: Column(
        children: [
          AspectRatio(aspectRatio: aspectRatio, child: Container(padding: const EdgeInsets.all(20), 
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.2), 
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(htopphone.image[0]),
          ),), 
          const SizedBox(height: 5), 
          Text(htopphone.title,
           style: const TextStyle(color: Colors.black),
           maxLines: 2,), 
           Row(
             children: [
               Text('\$${htopphone.price}', style: const TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600, fontSize: 18),),
             ],
           )
        ],
      ),),
    );
  }
}