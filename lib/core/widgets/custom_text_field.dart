// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({super.key, this.onChanged, this.x});
  Function(String)? onChanged;
  int? x;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  
  bool emaill = true;
    @override
  Widget build(BuildContext context) {
    return TextFormField(
        onChanged: (value) {
          setState(() {
            emaill = !emaill;
          });
        },
        validator: (value) {
          if (value!.isEmpty) {
            return 'field is required';
          }
          return null;
        },
        decoration: InputDecoration(
            suffixIcon: widget.x == 1
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.check, color:!emaill? kPrimaryColor: Colors.grey,size: 30,))
                : IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  )));
  }
}
