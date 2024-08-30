// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,this.onChanged});
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onChanged: (value) {},
        validator: (value) {
          if (value!.isEmpty) {
            return 'field is required';
          }
          return null;
        },
        decoration: InputDecoration());
  }
}
