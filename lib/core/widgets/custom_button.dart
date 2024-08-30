
import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:const  EdgeInsets.symmetric(vertical: 20),
        width: MediaQuery.of(context).size.width-20,
        height: 68,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: const TextStyle(  decoration: TextDecoration.none,
            fontSize: 22, color:Colors.white,fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
