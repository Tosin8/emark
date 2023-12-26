import 'package:emark/models/top_deals/appliances.dart';
import 'package:flutter/material.dart';

import '../../components/sectiontitle.dart';
import 'htopcard.dart';
import 'ltopcard.dart';

class ApplianceTopDeals extends StatelessWidget {
  const ApplianceTopDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SectionTitle(text: 'Appliances Top Deals', press: (){}),
        const SizedBox(height: 20), 
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                children: [
                  ...List.generate(htopAppliances.length,
                   (index) => ApplianceHTopCard(htopappliance: htopAppliances[index]))
                ],
              ),
              const SizedBox(height: 10), 
              Row(
                children: [
                  ...List.generate(ltopAppliances.length, (index) => ApplianceLTopCard
                  (ltopappliance: ltopAppliances[index]))
                ],
              )

            ],
          ),
        )
      ],
    );
  }
}
