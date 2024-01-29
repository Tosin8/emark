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
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12), 
                  
                    Text('Account Settings', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),), 
                    SizedBox(height: 20), 
                    SettingsMenuTile()
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.home, size: 35,color: Colors.blueAccent,),
      title: const Text('My Addresses', style: TextStyle(color: Colors.white, fontSize: 18),),
      subtitle: Text('Set shopping delivery address', style: TextStyle(
        color: Colors.white.withOpacity(0.6)),),
    );
  }
}

