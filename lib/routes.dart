import 'package:emark/screen/form/login/login.dart';
import 'package:emark/screen/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignIn.routeName: (context) => const SignIn(),
};
