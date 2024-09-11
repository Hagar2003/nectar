import 'package:flutter/material.dart';
import 'package:nectar/features/explore/presentattion/views/widgets/list_explore_item.dart';
import 'package:nectar/features/home/presentation/views/widgets/list_view_item.dart';

class ExclusiveListView extends StatelessWidget {
  const ExclusiveListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, int index) {
          return ListViewItem(
            index: index,
          );
        },
      ),
    );
  }
}
