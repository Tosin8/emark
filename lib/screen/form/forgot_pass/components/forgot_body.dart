import 'package:flutter/material.dart';

class ForgotBody extends StatefulWidget {
  const ForgotBody({super.key});

  @override
  State<ForgotBody> createState() => _ForgotBodyState();
}

class _ForgotBodyState extends State<ForgotBody> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Retrieve Account',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Please enter your mail and we will send \n you a link to return to your account',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 35),
                ForgotPassForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
