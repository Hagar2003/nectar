
import 'package:flutter/material.dart';
class PasswordTextField extends StatefulWidget {
const  PasswordTextField({super.key});
  

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool pass = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
          onChanged: (value) {},
                obscureText: pass,
                
        validator: (value) {
          if (value!.isEmpty) {
            return 'field is required';
          }
          return null;
        },
        decoration: InputDecoration(
            
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    pass = !pass;
                  });
                },
  icon: Icon(pass==false ? Icons.visibility:Icons.visibility_off)
  )));
  }
}
