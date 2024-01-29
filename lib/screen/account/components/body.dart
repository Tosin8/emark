import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_heading.dart';

class AccountBody extends StatelessWidget {
  const AccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const profile_heading(),
          const SizedBox(height: 10), 
          Container( 
           
            width: double.infinity, 
            height: 800,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20) , 
              topRight: Radius.circular(20)),  color: Colors.black,
          ),
            child: const Column(
              children: [
                SizedBox(height: 12), 
                
                  Text('Account Settings', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
              ],
            ),
          )
        ],
      
    )); 
  }
}

