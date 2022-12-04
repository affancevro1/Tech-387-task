import 'package:doctor_app/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextField(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: true,
      decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
            color: GlobalVariables.primaryColor,
            width: 2,
          ))),
      validator: (val) {},
    );
  }
}
