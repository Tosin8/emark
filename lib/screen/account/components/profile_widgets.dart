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
        title: const Text('Lizzy Jones', style: TextStyle(color: Colors.black, fontSize: 18),),
        subtitle: const Text('lizzyjones@gmail.com'),
        trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
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
        child: const Align(child: Text('Logout', style: TextStyle(color: Colors.white, fontSize: 18),),),
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
        title:  Text(mainTitle, style: const TextStyle(color: Colors.white, fontSize: 18),),
        subtitle: Text(subTitle, style: TextStyle(
          color: Colors.white.withOpacity(0.6)),),
      ),
    );
  }
}


class appSettingMenu extends StatefulWidget {
  const appSettingMenu({super.key,    required this.mainTitle, required this.subTitle
   
  });

final String mainTitle; 
final String subTitle; 
  @override
  State<appSettingMenu> createState() => _appSettingMenuState();
}

class _appSettingMenuState extends State<appSettingMenu> {
  bool _toggled = false; 
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      
      title: const Text('Offline mode', style: TextStyle(color: Colors.white, fontSize: 18),),
      subtitle: const Text('data'),
      value: _toggled,
       onChanged: (bool value) {
        setState(() => _toggled = value); 
         
       });
  }
}

