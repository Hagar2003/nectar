import 'package:flutter/material.dart';
import 'package:nectar/core/widgets/grid_view_custom.dart';
import 'package:nectar/features/home/presentation/views/widgets/exclusive_list_view.dart';
import 'package:nectar/features/search/presentation/views/widgets/app_bar_search.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 16),
          child: Column(
          children: [
            AppBarSearch(),
          GridViewCustom( name: 'Red Apple')
          ],
          ),
        ),
      )  );
  }
}
