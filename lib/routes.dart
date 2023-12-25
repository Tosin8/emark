import 'package:emark/extended_screen/form/forgot_pass/forgot_pass.dart';
import 'package:emark/extended_screen/form/login/login.dart';
import 'package:emark/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'extended_screen/form/signup/signup.dart';
import 'screen/home/home.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignIn.routeName: (context) => const SignIn(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  Home.routeName: (context) => const Home(),
  SignUp.routeName: (context) => const SignUp(),
  //DetailsScreen.routeName: (context) => const DetailsScreen(),
};
