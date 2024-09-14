import 'package:flutter/material.dart';
import 'package:nectar/core/widgets/custom_search_fiels.dart';
import 'package:nectar/features/home/presentation/views/widgets/slider.dart';

class UpperSectionHome extends StatelessWidget {
  const UpperSectionHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 15,
      ),
      const CustomSearchFieldd(),
      // Container(
      //     height: 110,
      //     width: double.infinity,
      //     decoration: BoxDecoration(
      //       color:  Colors.white,
      //       borderRadius: BorderRadius.circular(16),
      //     ),
      //     child: const Image(
      //        image: AssetImage('assets/images/banner.jpg'), fit: BoxFit.cover))
      SliderPart()
    ]);
  }
}
