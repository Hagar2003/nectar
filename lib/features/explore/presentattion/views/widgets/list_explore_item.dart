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
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10.2),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 241, 185, 132),
            ),
            color: const Color.fromARGB(255, 247, 247, 222),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Column(children: [
            Image.asset(
              x[index],
              height: 110,
              width: 120,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Beverages',
              textAlign: TextAlign.center,
              style: Styles.Text23,
            ),
            SizedBox(height: 20)
          ])),
    );
  }
}
