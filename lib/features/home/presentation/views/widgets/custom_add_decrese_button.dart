import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';


class CustomAddAndDecreaseItem extends StatefulWidget {
  const CustomAddAndDecreaseItem({super.key});

  @override
  State<CustomAddAndDecreaseItem> createState() =>
      _CustomAddAndDecreaseItemState();
}

class _CustomAddAndDecreaseItemState extends State<CustomAddAndDecreaseItem> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              num >0 ? num-- : null;
              setState(() {
                
              });
            },
            icon: Icon(
              Icons.remove,
              size: 30,
              color: Colors.grey.shade600,
            )),
        Container(
          width: 43.67,
          height: 44.67,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade500),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            '$num',
            style: Styles.Text23,
          ),
        ),
        IconButton(onPressed: (){
          num++;
          setState(() {
            
          });
        }, icon: Icon(Icons.add,size: 30,color: kPrimaryColor,))
      ],
    );
  }
}