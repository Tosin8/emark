


import 'package:flutter/material.dart';

class Collections extends StatelessWidget {
  const Collections({
    super.key, required this.image, required this.text, required this.press,
  });

final String image, text; 
final VoidCallback press; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press, 
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          
          decoration:  BoxDecoration(
            image: DecorationImage(
              image:  AssetImage(image), fit: BoxFit.cover
              ), 
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.4), Colors.black38.withOpacity(0.6),], 
              begin: Alignment.bottomCenter)
            ),
            child: Align(child: Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),textAlign: TextAlign.center,)),
          ),
        ),
      ),
    );
  }
}