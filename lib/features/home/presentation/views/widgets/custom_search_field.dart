import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {

 return TextField(
      decoration: InputDecoration(
      filled: true,
      labelStyle:Styles.Text18,
        fillColor:const Color.fromARGB(255, 234, 235, 234),
        labelText: 'Search Store',
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide:const BorderSide(color: Color(0xffF2F3F2)),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide:const BorderSide(color: Color(0xffF2F3F2)),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        borderSide:const BorderSide(color:kPrimaryColor),
      ),
        prefixIcon: const Icon(FontAwesomeIcons.magnifyingGlass,size: 24,color: Colors.black,),
      ),
    );
  }
}