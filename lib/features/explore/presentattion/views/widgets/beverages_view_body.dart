import 'package:flutter/material.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/features/explore/presentattion/views/widgets/list_explore_item.dart';
import 'package:nectar/features/home/presentation/views/widgets/list_view_item.dart';

class BeveragesViewBody extends StatelessWidget {
  const BeveragesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beverages',
        style: Styles.Text23,),
        centerTitle: true,
        actions: [
          Image(image:AssetImage(AppImages.icon),width: 50,)
        ],
        ),
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 16),
          child: GridView.custom(
          padding: EdgeInsets.symmetric(horizontal: 2),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
             crossAxisSpacing: 2,
              mainAxisSpacing: 8,
              childAspectRatio: 1.2 / 1.4,),
                shrinkWrap: true,
                childrenDelegate: SliverChildBuilderDelegate(childCount: 7,
          (context, int index) {
          return ListViewItem(index: 9,name:'Sprite');
                }),
              ),
        ));
      
    
  }
}
