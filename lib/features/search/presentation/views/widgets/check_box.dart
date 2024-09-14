import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';

class CheckBoxFilter extends StatefulWidget {
   CheckBoxFilter({super.key, required this.text});
String text;
  @override
  State<CheckBoxFilter> createState() => _CheckBoxFilterState();
}

class _CheckBoxFilterState extends State<CheckBoxFilter> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
            scale: 1.4,
            child: Checkbox(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                activeColor: kPrimaryColor,
                //hoverColor: Colors.white,
                visualDensity: VisualDensity.comfortable,
                //tristate: true, // Example with tristate
                value: value,
                onChanged: (newValue) {
                  setState(() {
                    value = newValue!;
                  });
                })),
                SizedBox(width: 6),
        Text(widget.text,style: Styles.Text18.copyWith(color:!value? Colors.black:kPrimaryColor),)
      ],
    );
  }
}
