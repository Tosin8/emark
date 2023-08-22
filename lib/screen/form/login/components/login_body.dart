import 'package:emark/widgets/constants.dart';
import 'package:emark/widgets/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'Welcome Back',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Sign in with your email and password or \n continue with your social media accounts',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            SignInForm(),
          ],
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kTextColor),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: kTextColor),
                gapPadding: 10,
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 20, 20
                    // getProportionateScreenWidth(20),
                    // getProportionateScreenWidth(20),
                    // getProportionateScreenWidth(20),
                    ),
                child: SvgPicture.asset(
                  'assets/icons/mail.svg',
                  height: getProportionateScreenWidth(18),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
