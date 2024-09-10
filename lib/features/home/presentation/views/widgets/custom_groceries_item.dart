import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/styles.dart';

class CustomGroceriesItem extends StatelessWidget {
  const CustomGroceriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 10),
      margin: const EdgeInsets.all(8),
      width:250,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 245, 235, 212),
        borderRadius: BorderRadius.circular(16),
      ),

      child:  Row(
        children: [
          Center(child: Image.asset(AppImages.pulses,
    
          width: 120,
          fit: BoxFit.contain,)),
          
          Text('pulses',style: Styles.Text20.copyWith(color:Colors.black,
          fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
