import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';


class CounterCart extends StatefulWidget {
  const CounterCart({super.key});

  @override
  State<CounterCart> createState() =>
      _CounterCartState();
}

class _CounterCartState extends State<CounterCart> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Container(
          width: 43.67,
          height: 41.67,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(15),
          ),child:  IconButton(
            onPressed: () {
              num >0 ? num-- : null;
              setState(() {
                
              });
            },
            icon: Icon(
              Icons.remove,
              size: 30,
              color: Colors.grey.shade600,
            ))),
            SizedBox(width: 15,),
       Text(
            '$num',
            style: Styles.Text18.copyWith(color: Colors.black),
          ),
          SizedBox(width: 15,),
Container(
          width: 43.67,
          height: 41.67,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(15),
          ),
        
      child:  IconButton(onPressed: (){
          num++;
          setState(() {
            
          });
        }, icon: Icon(Icons.add,size: 30,color: kPrimaryColor,)))
      ],
    );
  }
}