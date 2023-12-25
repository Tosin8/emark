import 'package:bottom_navy_bar/bottom_navy_bar.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavyBar(
         onItemSelected: (index) => setState(()=> this.index = index), 
        items: <BottomNavyBarItem>[],
       ),
  );
  
  }
}
