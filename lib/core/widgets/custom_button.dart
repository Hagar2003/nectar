import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key, required this.text, this.onTap, required this.x});
  final String text;
  final void Function()? onTap;
  int x;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: MediaQuery.of(context).size.width - 20,
        height: 64,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child:x ==0? Text(
          text,
          style: const TextStyle(
              decoration: TextDecoration.none,
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ):
        Row(children: [
          SizedBox(width: 110),
          Text(
          text,
          style: const TextStyle(
              decoration: TextDecoration.none,
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(width: 40),
        Container(
              padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              decoration: BoxDecoration(
                color:const Color.fromARGB(255, 81, 161, 109),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text('\$12.96',style:
               TextStyle(fontSize: 13,color:Colors.white,fontWeight: FontWeight.w700),),
            )
        ],)
      ),
    );
  }
}
