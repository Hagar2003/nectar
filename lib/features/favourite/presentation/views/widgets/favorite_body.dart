import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/features/favourite/presentation/views/widgets/favourite_item.dart';

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite',
        style: Styles.Text23,),
        centerTitle: true,
      ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Divider(
          color: kGrey,
          height: 20,
          thickness: 2,
        ),
            FavouriteItem(index: 10,text: 'Coca Cola',),
            FavouriteItem(index: 9,text: 'Sprite Can',),
            FavouriteItem(index: 10,text: 'Coca Cola',),
            FavouriteItem(index: 9,text: 'Sprite Can',),
            FavouriteItem(index: 10,text: 'Coca Cola',),
          
            SizedBox(height: 20),
            CustomButton(text: 'Add All To Cart', x: 0),
          ],
        ),
      ),
    ));
  }
}