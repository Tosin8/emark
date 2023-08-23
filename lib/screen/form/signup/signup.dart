import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  static String routeName = '/signin';
  @override
  State<SignUp> createState() => _SignInState();
}

class _SignUpState extends State<SignUp> {
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
