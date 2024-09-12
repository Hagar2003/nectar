import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/features/cart/presentation/views/widgets/counter_cart.dart';

class FavouriteItem extends StatelessWidget {
   FavouriteItem({super.key,required this.index,required this.text});
  int index;
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      
      SizedBox(
        height: 20,
      ),
      Row(children: [
        SizedBox(width: 10),
        Image.asset(
          x[index],
          height: 70,
        ),
        SizedBox(
          width: 40,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Text(
              text,
              style: Styles.Text16.copyWith(
                  color: Colors.black, fontWeight: FontWeight.w800),
            ),SizedBox(height: 4),
            Text(
              '1kg,Price',
              style: Styles.Text16,
            ),
            SizedBox(
              height: 27,
            ),
          ]),
          Row(
            children: [
              SizedBox(width: 120),
              Text(
                '\$9.00',
                style: Styles.Text16.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w800),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.black,
                    size: 20,
                  ))
            ],
          ),
        ]),
      //  SizedBox(height: 25)
      ]),
      Divider(
        color: kGrey,
        height: 20,
        thickness: 2,
      ),
    ]);
  }
}
