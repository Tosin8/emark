import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/signup_body.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  static String routeName = '/signup';
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sign Up',
            style: TextStyle(fontSize: 18, color: Color(0xff888888)),
          ),
          centerTitle: true,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: SignUpBody(),
      ),
    );
  }
}
