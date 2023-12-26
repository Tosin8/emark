import 'package:flutter/material.dart';

import '../../../../models/top_deals/phones.dart';
import '../../components/sectiontitle.dart';
import 'htopcard.dart';
import 'ltopcard.dart';

class PhonesTopDeals extends StatelessWidget {
  const PhonesTopDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SectionTitle(text: 'Phones Top Deals', press: (){}),
        const SizedBox(height: 20), 
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                children: [
                  ...List.generate(htopPhones.length,
                   (index) => PhoneHTopCard(
                    htopphone: htopPhones[index]))
                ],
              ),
              const SizedBox(height: 10), 
              Row(
                children: [
                  ...List.generate(ltopPhones.length, 
                  (index) => PhoneLTopCard
                  (
                    ltopphone: ltopPhones[index]))
                ],
              )

            ],
          ),
        )
      ],
    );
  }
}
