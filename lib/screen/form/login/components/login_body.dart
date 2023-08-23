import 'package:emark/widgets/constants.dart';
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
            SizedBox(height: 15),
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
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;

  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                onSaved: (newValue) => email = newValue!,
                onChanged: (value) {
                  if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                    setState(() {
                      errors.remove(kEmailNullError);
                    });
                  } else if (!emailValidatorRegExp.hasMatch(value) &&
                      errors.contains(kInvalidEmailError)) {
                    setState(() {
                      errors.remove(kInvalidEmailError);
                    });
                  }
                  return null;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    errors.add(kEmailNullError);
                    return '';
                  } else if (!emailValidatorRegExp.hasMatch(value)) {
                    errors.add(kInvalidEmailError);
                    return '';
                  }
                  return null;
                },
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
                      // height: getProportionateScreenWidth(18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                onChanged: (value) {
                  if (value.isNotEmpty && errors.contains(kPassNullError)) {
                    setState(() {
                      errors.remove(kPassNullError);
                    });
                  } else if (value.length < 8 &&
                      !errors.contains(kShortPassError)) {
                    setState(() {
                      errors.remove(kShortPassError);
                    });
                  }
                  return null;
                },
                validator: (value) {
                  if (value!.isEmpty && !errors.contains(kPassNullError)) {
                    setState(() {
                      errors.add(kPassNullError);
                    });
                  } else if (value.length < 8 &&
                      !errors.contains(kShortPassError)) {
                    setState(() {
                      errors.add(kShortPassError);
                    });
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,

                obscureText: true, // turning it into a password key.

                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
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
                      'assets/icons/lock.svg',
                      // height: getProportionateScreenWidth(18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              FormError(errors: errors),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                  }
                },
                child: Container(
                  width: 350,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/error.svg', height: 14, width: 14),
        const SizedBox(width: 10),
        Text(error),
      ],
    );
  }
}
