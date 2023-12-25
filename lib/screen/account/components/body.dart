import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'profile_pic.dart';

class AccountBody extends StatelessWidget {
  const AccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        const ProfilePic(), 
        const SizedBox(height: 20),
        Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            foregroundColor: const Color(0xfff5f6f9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            
              
            ),
          ),
          onPressed: (){},
         child: Row(
          children: [
            SvgPicture.asset('assets/icons/user_icon.svg', 
            // ignore: deprecated_member_use
            width: 22, color: kPrimaryColor)
          ],
         )),)
        ] );
  }
}

