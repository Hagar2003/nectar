import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/widgets/custom_search_field.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          SizedBox(height: 110),
          SizedBox(
              width: 310,
              child: CustomSearchField(
                text: 'Egg',
              )),SizedBox(width: 30,),
          GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kFilter);
              },
              child: Image(
                image: AssetImage(AppImages.icon),
                width: 25,fit: BoxFit.contain,
              ))
        ],
      ),
    );
  }
}
