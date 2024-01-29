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

class accountbtn extends StatelessWidget {
  const accountbtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: () {
        
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), 
          border: Border.all(color: Colors.white),
      
          
        ),
        child: Align(child: Text('Logout', style: TextStyle(color: Colors.white, fontSize: 18),),),
      ),
    );
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

