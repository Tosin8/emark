import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';

import 'components/home_body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  static String routeName = '/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final inactiveColor = Color(0xffffecdf); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Body(),
      
  );
  
  }
}
