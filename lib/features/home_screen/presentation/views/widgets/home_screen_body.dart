import 'package:flutter/material.dart';
import 'package:nectar/features/home_screen/presentation/views/widgets/custom_search_field.dart';


class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(image: AssetImage('assets/images/carrot.png'),height: 40,width: 40,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: const Column(
          children: [
            SizedBox(height: 15,),
            CustomSearchField(),
          ],
        ),
      ),
    );
  }
}
