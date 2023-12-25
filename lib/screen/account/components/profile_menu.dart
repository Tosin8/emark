
import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key, required this.text, required this.icon, required this.press,
  });


final String text, icon; 
final VoidCallback press; 
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(20),
        foregroundColor: const Color(0xfff5f6f9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        
          
        ),
      ),
      onPressed: press,
     child: Row(
      children: [
        SvgPicture.asset(icon, 
        // ignore: deprecated_member_use
        width: 22, color: kPrimaryColor), 
        const SizedBox(width: 20), 
         Expanded(child: Text(text, style: const TextStyle(color: Colors.black),
        )) ,
         const Icon(Icons.arrow_forward_ios, 
         color: Colors.black,)
      ],
     )),);
  }
}

