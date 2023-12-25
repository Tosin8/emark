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
      body: const Body(),
      bottomNavigationBar: BottomNavyBar(
         onItemSelected: (index) => setState(()=> this.index = index), 
        items: <BottomNavyBarItem>[

          BottomNavyBarItem(
            icon: const Icon(Icons.apps),
           title: const Text('Home')),   
            BottomNavyBarItem(
              icon: const Icon(Icons.shopping_cart),
           title: const Text('Cart')), 
              BottomNavyBarItem(
                icon: const Icon(Icons.favorite),
           title: const Text('Saved')),  
             BottomNavyBarItem(icon: const Icon(Icons.person),
           title: const Text('Account')), 
        ],
       ),
  );
  
  }
}
