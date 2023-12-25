import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/login_body.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  static String routeName = '/signin';
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sign In',
            style: TextStyle(fontSize: 18, color: Color(0xff888888)),
          ),
          centerTitle: true,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: LoginBody(),
      ),
    );
  }
}
