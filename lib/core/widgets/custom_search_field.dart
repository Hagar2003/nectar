import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';

class CustomSearchField extends StatelessWidget {
 CustomSearchField({super.key,required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        labelStyle: Styles.Text18,
        fillColor: const Color.fromARGB(255, 234, 235, 234),
        labelText: text,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Color(0xffF2F3F2)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Color(0xffF2F3F2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: kPrimaryColor),
        ),
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 24,
          color: Colors.black,
      
        ),
        suffixIcon: Container(height: 5,width: 10,
        margin: EdgeInsets.all(12),
          decoration: BoxDecoration(color:Colors.grey.shade400,
          borderRadius: BorderRadius.circular(60)),
        
          child: Icon(Icons.close,size: 20,color: Colors.white,))
      ),
    );
  }
}
