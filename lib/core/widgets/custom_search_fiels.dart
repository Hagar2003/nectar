import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/styles.dart';

class CustomSearchFieldd extends StatelessWidget {
  const CustomSearchFieldd({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kSearch);
      },
      child: Container(
      //  margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kGrey,
        ),
        child: const Row(
          children: [
            Icon(FontAwesomeIcons.magnifyingGlass),
            SizedBox(
              width: 15,
            ),
            Text(
              'Search Store',
              style: Styles.Text18,
            ),
          ],
        ),
      ),
    );
  }
}
  
