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
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.black,
        containerHeight: 70,
        selectedIndex: index,
         onItemSelected: (index) => setState(()=> this.index = index), 
        items: <BottomNavyBarItem>[

          BottomNavyBarItem(
            icon: const Icon(Icons.apps),
           title: const Text('Home'), 
           activeColor: kPrimaryColor,
           inactiveColor: inactiveColor,
           textAlign: TextAlign.center),   
            BottomNavyBarItem(
              icon: const Icon(Icons.shopping_cart),
           title: const Text('Cart'), 
           activeColor: kPrimaryColor,
           inactiveColor: inactiveColor,
           textAlign: TextAlign.center), 
              BottomNavyBarItem(
                icon: const Icon(Icons.favorite),
           title: const Text('Saved'), 
           activeColor: kPrimaryColor,
           inactiveColor: inactiveColor,
           textAlign: TextAlign.center),  
             BottomNavyBarItem(
              icon: const Icon(Icons.person),
           title: const Text('Account'), 
           activeColor: kPrimaryColor,
           inactiveColor: inactiveColor,
           textAlign: TextAlign.center), 
        ],
       ),
  );
  
  }
}
