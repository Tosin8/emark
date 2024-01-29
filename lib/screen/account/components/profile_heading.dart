import 'package:flutter/material.dart';

class profile_heading extends StatelessWidget {
  const profile_heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
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
    );
  }
}

