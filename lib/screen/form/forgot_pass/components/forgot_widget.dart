import 'package:emark/widgets/constants.dart';
import 'package:flutter/material.dart';

class FormButtonForgot extends StatelessWidget {
  const FormButtonForgot({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState?.save();
        }
      },
      child: Container(
        width: 350,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Center(
          child: Text(
            'CONTINUE',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
