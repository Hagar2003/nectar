import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/styles.dart';

class ListViewItem extends StatelessWidget {
  ListViewItem({super.key,required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
    
        margin: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.2),
          border: Border.all(color: const Color.fromARGB(255, 143, 140, 140), width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        width: 170,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 8),
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [const SizedBox(height: 15),
              Center(
                child: Image.asset(
                  x[index],
                  height: 70,
                  width: 100,
                  fit: BoxFit.contain,
                ),
              ),const SizedBox(height: 10,),
              Text('Red Apple',style:
               Styles.Text18.copyWith(color:Colors.black),),
               const Text('1kg ,priceg',style:
               Styles.Text16,),
               const SizedBox(height: 10,),
               const SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
          Text(' \$4.99',style: Styles.Text18.copyWith(color:Colors.black),),
          Container(height:40,
          width:40,
          decoration:BoxDecoration(
          color:kPrimaryColor,
          borderRadius: BorderRadius.circular(14)),
            child: IconButton(onPressed: (){},
             icon: const Icon(Icons.add),color:Colors.white))
          
               ],)
            ],
          ),
        ));
  }
}
