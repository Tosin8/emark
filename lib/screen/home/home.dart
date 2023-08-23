import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('Welcome to HomePage'),
    ));
  }
}
