import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../login/components/login_widget.dart';
import '../../login/login.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
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
                  'Complete Profile',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Complete your details or continue \n with your social media accounts',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                SignInForm(),
              ],
            ),
          ),
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
  bool remember = false;

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
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  hintText: 'Enter your first name',
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
                      'assets/icons/user.svg',
                      // height: getProportionateScreenWidth(18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  hintText: 'Your last name is your surname',
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
                      'assets/icons/user.svg',
                      // height: getProportionateScreenWidth(18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                onSaved: (newValue) => password = newValue!,
                onChanged: (value) {
                  if (value.isNotEmpty && errors.contains(kPassNullError)) {
                    setState(() {
                      errors.remove(kPassNullError);
                    });
                  } else if (value.length >= 8 &&
                      errors.contains(kShortPassError)) {
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
                textInputAction: TextInputAction.next,

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
              TextFormField(
                onSaved: (newValue) => password = newValue!,
                onChanged: (value) {
                  if (value.isNotEmpty && errors.contains(kPassNullError)) {
                    setState(() {
                      errors.remove(kPassNullError);
                    });
                  } else if (value.length >= 8 &&
                      errors.contains(kShortPassError)) {
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
                textInputAction: TextInputAction.next,

                obscureText: true, // turning it into a password key.

                decoration: InputDecoration(
                  labelText: 'Repeat Password',
                  hintText: 'Repeat your password',
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
              const SizedBox(height: 20),
              TextFormField(
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset('assets/icons/nigeria.png'),
                  ),
                  hintText: '+234',
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
                      'assets/icons/phone.svg',
                      // height: getProportionateScreenWidth(18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: 'Delivery Address',
                  hintText: 'Enter a delivery address',
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
                      'assets/icons/location_point.svg',
                      // height: getProportionateScreenWidth(18),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              FormError(errors: errors),
              const SizedBox(height: 20),
              FormButton(formKey: _formKey),
              const SizedBox(height: 15),
              const Divider(),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: 'assets/icons/google-icon.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'assets/icons/facebook-2.svg',
                    press: () {},
                  ),
                  SocialCard(
                    icon: 'assets/icons/twitter.svg',
                    press: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an Account ",
                    style: TextStyle(fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.popAndPushNamed(context, SignIn.routeName);
                    },
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                          fontSize: 16,
                          color: kPrimaryColor,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ));
  }
}
