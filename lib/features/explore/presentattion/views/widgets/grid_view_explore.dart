import 'package:flutter/material.dart';
import 'package:nectar/features/explore/presentattion/views/widgets/list_explore_item.dart';

class ListExplore extends StatelessWidget {
  const ListExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
           crossAxisSpacing: 13,
            mainAxisSpacing: 13,
            childAspectRatio: 1.7 / 1.9,),
      shrinkWrap: true,
      childrenDelegate: SliverChildBuilderDelegate(childCount: 7,
        (context, int index) {
        return ListExploreItem(index: index);
      }),
    );
  }
}
