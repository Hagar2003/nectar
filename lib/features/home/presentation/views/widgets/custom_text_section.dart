import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';

class CustomTextSection extends StatelessWidget {
  const CustomTextSection({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              text,
              style:
                  Styles.Text25.copyWith(color: Colors.black, fontFamily: ''),
            )),
        TextButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: Styles.Text18.copyWith(color: kPrimaryColor),
            )),
      ],
    );
  }
}
