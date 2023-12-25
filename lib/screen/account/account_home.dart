import 'package:flutter/material.dart';

import 'components/body.dart';

class Account extends StatelessWidget {
  
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
    appBar: AppBar(
      title: Text('Account'), 
      automaticallyImplyLeading: false, 
      centerTitle: true),
      body: AccountBody(), 
    );
  }
}