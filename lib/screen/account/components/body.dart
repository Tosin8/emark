import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class AccountBody extends StatelessWidget {
  const AccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column( 
        children: [
          const ProfilePic(), 
          const SizedBox(height: 20),
         
              const Text('Mary Jones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
           
          ProfileMenu(
            text: 'My Account', 
            icon: 'assets/icons/user_icon.svg', 
            press: () {  },
          ), 
           ProfileMenu(
            text: 'Notifications',  
            icon: 'assets/icons/bell.svg', 
            press: () {  },
          ) , ProfileMenu(
            text: 'Settings', 
            icon: 'assets/icons/settings.svg', 
            press: () {  },
          ),  ProfileMenu(
            text: 'Orders',  
            icon: 'assets/icons/orders.svg', 
            press: () {  },
          ),  ProfileMenu(
            text: 'Pending Reviews',  
            icon: 'assets/icons/pending.svg', 
            press: () {  },
          ) , 
          ProfileMenu(
            text: 'Recently Viewed',  
            icon: 'assets/icons/recent.svg', 
            press: () {  },
          ) , 
           ProfileMenu(
            text: 'Help Center',  
            icon: 'assets/icons/question_mark.svg', 
            press: () {  },
          ) ,  ProfileMenu(
            text: 'Log Out',  
            icon: 'assets/icons/log_out.svg', 
            press: () {  },
          ) ,
          const SizedBox(height: 20,) 
          ] ),
    );
  }
}

