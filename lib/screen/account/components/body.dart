// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'profile_heading.dart';
import 'profile_menu.dart';

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
            height: 1000,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20) , 
              topRight: Radius.circular(20)),  color: Colors.black,
          ),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12), 
                  
                    Text('Account Settings', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),), 
                    SizedBox(height: 20), 
                    SettingsMenuTile(mainTitle: 'My Addresses', subTitle: 'Set shopping delivery address', 
                    ), 
                    SettingsMenuTile(mainTitle: 'My Orders', subTitle: 'In-progress and Completed Orders', 
                    ),SettingsMenuTile(mainTitle: 'My Coupons', subTitle: 'List of all the discounted coupons', 
                    ),SettingsMenuTile(mainTitle: 'Notifications', subTitle: 'Set shopping delivery address', 
                    ),SettingsMenuTile(mainTitle: 'Account Privacy', subTitle: 'Manage data storage and connected accounts', 
                    ),SettingsMenuTile(mainTitle: 'Reviews', subTitle: 'Set shopping delivery address', 
                    ), 
                    SizedBox(height: 20), 
                    Text('App Settings', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),), 

                    SettingsMenuTile(mainTitle: 'Load Data', subTitle: 'Upload files to your cloud', 
                    ),SettingsMenuTile(mainTitle: 'Geolocation', subTitle: 'Set recommendation based on location', 
                    ),SettingsMenuTile(mainTitle: 'Reviews', subTitle: 'Set shopping delivery address', 
                    ), SettingsMenuTile(mainTitle: 'Notifications', subTitle: 'Set shopping delivery address', 
                    ),
                ],
              ),
            ),
          )
        ],
      
    )); 
  }
}

class SettingsMenuTile extends StatelessWidget {
  const SettingsMenuTile({
    Key? key,
    required this.mainTitle,
    required this.subTitle,
  }) : super(key: key);

final String mainTitle; 
final String subTitle; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: (){}, 
      child: ListTile(
        leading: const Icon(Icons.home, size: 35,color: Colors.blueAccent,),
        title:  Text(mainTitle, style: TextStyle(color: Colors.white, fontSize: 18),),
        subtitle: Text(subTitle, style: TextStyle(
          color: Colors.white.withOpacity(0.6)),),
      ),
    );
  }
}

