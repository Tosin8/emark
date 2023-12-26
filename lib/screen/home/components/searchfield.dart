import 'package:flutter/material.dart';

class searchField extends StatelessWidget {
  const searchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
          onChanged: (value) {
            // search value.
          },
          decoration:  InputDecoration(
            filled: true, 
            fillColor: const Color(0xff979797).withOpacity(0.1),
            enabledBorder: searchOutlineInputBorder, 
            focusedBorder: searchOutlineInputBorder, 
            hintText: 'Search Products',
            prefixIcon: const Icon(Icons.search),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          )),
    );
  }
}

const searchOutlineInputBorder = OutlineInputBorder (borderRadius: BorderRadius.all(Radius.circular(12)), borderSide: BorderSide.none, 
);