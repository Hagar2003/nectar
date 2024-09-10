import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/utils/styles.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height:MediaQuery.of(context).size.height*.08,
        width:double.infinity,
        decoration:  BoxDecoration(
          color: const Color(0xffF2F3F2),

          borderRadius: BorderRadius.circular(16),
        ),
      child:const Row(
        children: [SizedBox(width: 15,),
      Icon(FontAwesomeIcons.magnifyingGlass,size: 22,),
        SizedBox(width: 10,),
      Text('Search Store',
      style: Styles.Text18,)
        ],
      )
      ),
    );
  }
}
