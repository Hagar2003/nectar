import 'package:flutter/material.dart';
import 'package:nectar/features/explore/presentattion/views/widgets/list_explore_item.dart';

class ListExplore extends StatelessWidget {
  const ListExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      //  itemCount: 7,
      //  itemBuilder: (context, int index) {
      //    return ListExploreItem(index: index);
      //  },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
           crossAxisSpacing: 13,
            mainAxisSpacing: 13),
      shrinkWrap: true,
      childrenDelegate: SliverChildBuilderDelegate(childCount: 7,
        (context, int index) {
        return ListExploreItem(index: index);
      }),
    );
  }
}
