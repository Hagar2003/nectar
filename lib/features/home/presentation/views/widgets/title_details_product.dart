import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/features/home/presentation/views/widgets/custom_add_decrese_button.dart';

class TitleDetailsProduct extends StatelessWidget {
  const TitleDetailsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
          children:[
            
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                        Text('Natural Red Apple',style: Styles.Text26,),
                        Icon(
                          Icons.favorite_border,
                          size: 28,
                          color: const Color.fromARGB(255, 118, 116, 116),
                        ),
                      ],),SizedBox(height: 5,),
                      Text('1kg, price',style: Styles.Text18,),
                 
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  const  CustomAddAndDecreaseItem(),
                  Text('\$4.99',style: Styles.Text20.copyWith(color: Colors.black)),
                    ],
                  ),SizedBox(height: 10),])]),
    );
  }
}