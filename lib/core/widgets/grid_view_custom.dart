import 'package:flutter/material.dart';
import 'package:nectar/features/home/presentation/views/widgets/list_view_item.dart';

class GridViewCustom extends StatelessWidget {
  GridViewCustom({super.key, required this.name});
  String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
      child: GridView.custom(
        padding: EdgeInsets.symmetric(horizontal: 2),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 8,
          childAspectRatio: 1.2 / 1.4,
        ),
        shrinkWrap: true,
        childrenDelegate:
            SliverChildBuilderDelegate(childCount: 7, (context, int index) {
          return ListViewItem(index: index, name: name);
        }),
      ),
    );
  }
}
