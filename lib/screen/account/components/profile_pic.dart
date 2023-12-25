import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115 ,
       height: 115,
       child: Stack(
        fit:  StackFit.expand, 
        clipBehavior: Clip.none,
     
         children: [
         const CircleAvatar(
          backgroundImage: AssetImage('assets/images/sub-image/user_profile.jpg'),
         ), 
         Positioned(
          right: -12, bottom: 0, 
          child: SizedBox(
            height: 46, width: 46, 
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
            ), child: SvgPicture.asset('assets/icons/camera_icon.svg')
          ))
        
         
    )
          ],
     ));
  }
}