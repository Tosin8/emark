import 'package:flutter/material.dart';

import 'components/home_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}
