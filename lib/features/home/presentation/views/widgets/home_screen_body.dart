import 'package:flutter/material.dart';
import 'package:nectar/features/home/presentation/views/widgets/custom_text_section.dart';
import 'package:nectar/features/home/presentation/views/widgets/exclusive_list_view.dart';
import 'package:nectar/features/home/presentation/views/widgets/groceries_section.dart';
import 'package:nectar/features/home/presentation/views/widgets/upper_section_home.dart';


class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(image: AssetImage('assets/images/carrot.png'),
        height: 35,),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0),
          child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            UpperSectionHome(),

        CustomTextSection(text: 'Exclusive Offer',),

        SizedBox(height: 10),
            ExclusiveListView(),

            SizedBox(height: 10),
            CustomTextSection(text: 'Best Selling'),

            SizedBox(height: 10),
            ExclusiveListView(),

            SizedBox(height: 10),
              CustomTextSection(text: 'Groceries'),

              SizedBox(height: 10),

              GroceriesSection(),
            ]
          ),
        ),
      ),
      
    );
  }
}
