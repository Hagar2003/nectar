import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/features/explore/presentattion/views/widgets/list_explore.dart';
import 'package:nectar/features/home/presentation/views/widgets/custom_search_field.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16),
          child: Column(
          children: [
                  SizedBox(height: 20),
            Text('Find Products',style: Styles.Text23),
                  SizedBox(height: 20),
              CustomSearchField(),
            
             SizedBox(height:1200,child: ListExplore())])
          
          
              ),
        ),
      );
  }
}