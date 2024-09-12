import 'package:flutter/material.dart';
import 'package:nectar/features/home/presentation/views/widgets/custom_groceries_item.dart';
import 'package:nectar/features/home/presentation/views/widgets/list_view_item.dart';

class GroceriesSection extends StatelessWidget {
  const GroceriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [

          SizedBox(height: 110,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context,int index) {
              return const CustomGroceriesItem();
            },
          ),
        ),const SizedBox(height: 15),
        SizedBox(height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context,int index) {
              return  ListViewItem(index: 2,
              name:'Beaf Bone');
            },
          ),
        ),
      ],
    );
  }
}

  
