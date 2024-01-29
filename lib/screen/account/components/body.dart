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
          Container(
            
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: const AssetImage('assets/images/sub-image/user_profile.jpg', ),
                radius: 40,
                backgroundColor: Theme.of(context).primaryColorDark,
                
              ),
              title: Text('Lizzy Jones', style: TextStyle(color: Colors.black, fontSize: 18),),
              subtitle: Text('lizzyjones@gmail.com'),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
            ),
          ),
          SizedBox(height: 10), 
          Container( 
           
            width: double.infinity, 
            height: 800,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20) , 
              topRight: Radius.circular(20)),  color: Colors.black,
          ),
            child: Text('Hello'),
          )
        ],
      )
    );
  }
}

