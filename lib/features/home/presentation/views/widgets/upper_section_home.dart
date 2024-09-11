import 'package:flutter/material.dart';
import 'package:nectar/features/home/presentation/views/widgets/custom_search_field.dart';

class UpperSectionHome extends StatelessWidget {
  const UpperSectionHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 15,
      ),
      const CustomSearchField(),
      const SizedBox(height: 20),
      Container(
          height: 110,
          width: double.infinity,
          decoration: BoxDecoration(
            color:  Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Image(
              image: AssetImage('assets/images/banner.jpg'), fit: BoxFit.cover))
    ]);
  }
}
