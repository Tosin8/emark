import 'package:flutter/material.dart';

class AccountBody extends StatelessWidget {
  const AccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        SizedBox(
          width: 115 ,
           height: 115,
           child: Stack(
            fit:  StackFit.expand, 
             children: [
             CircleAvatar(
              backgroundImage: AssetImage('assets/images/sub-image/profile-pic.png'),
             )
            
             ],
           ),
        )
      ],
    );
  }
}