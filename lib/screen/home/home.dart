import 'package:flutter/material.dart';

import 'components/home_body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  static String routeName = '/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Body(),
      
  );
  
  }
}
