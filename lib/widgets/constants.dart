import 'package:emark/widgets/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff8588ff);
const kSecondaryColor = Color(0xfffffc85);
const kAccentColor = Color(0xffcac505);

const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomRight,
    colors: [Color(0xffffa53e), Color(0xffff7643)]);

const kTextColor = Color(0xff757575);

const kAnimationDuration = Duration(milliseconds: 200);

const Splash_textStyle = TextStyle(fontSize: 32, color: kSecondaryColor);

// form error

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
