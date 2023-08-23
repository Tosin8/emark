import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/forgot_body.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});
  static String routeName = '/forgot_pass';
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text(
          'Forgot Password',
          style: TextStyle(fontSize: 18, color: Color(0xff888888)),
        ),
      ),
      body: const ForgotBody(),
    );
  }
}
