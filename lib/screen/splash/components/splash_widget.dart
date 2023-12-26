import 'package:emark/extended_screen/form/login/login.dart';
import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';

class SplashButton extends StatelessWidget {
  const SplashButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100,
      top: 606,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, SignIn.routeName);
        },
        child: Container(
          width: 200,
          height: 45,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'BEGIN',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
