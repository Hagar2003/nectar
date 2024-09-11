import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/styles.dart';

class ListExploreItem extends StatelessWidget {
  const ListExploreItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBeverages);
      },
      child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 223, 211, 100),
            ),
            color: const Color.fromARGB(255, 242, 242, 230),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Column(children: [
            Image.asset(
              x[index],
              height: 110,
              width: 120,
              fit: BoxFit.contain,
            ),
            Text(
              'Beverages',
              textAlign: TextAlign.center,
              style: Styles.Text23,
            ),
          ])),
    );
  }
}
