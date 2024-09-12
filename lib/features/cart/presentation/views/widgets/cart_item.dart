import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/app_images.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/features/cart/presentation/views/widgets/counter_cart.dart';
import 'package:nectar/features/home/presentation/views/widgets/custom_add_decrese_button.dart';

class CartItem extends StatelessWidget {
  CartItem({super.key, required this.text, required this.pr,required this.index});
  String text;
  String pr;
  int index;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Divider(
        color: kGrey,
        height: 20,
        thickness: 2,
      ),
      SizedBox(
        height: 10,
      ),
      Row(children: [
        SizedBox(width: 10),
        Image.asset(
          x[index],
          height: 70,
        ),
        SizedBox(
          width: 30,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Styles.Text18.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                width: 90,
              ),
               Icon(
                    FontAwesomeIcons.x,
                    size: 20,
                    color: Colors.grey.shade500,
                  )
            ],
          ),//SizedBox(height: 2),
          Text(
            '1kg,Price',
            style: Styles.Text16,
          ),
          SizedBox(
            height: 17,
          ),
          Row(
            children: [
              CounterCart(),
              SizedBox(width: 80),
              Text(
                pr,
                style: Styles.Text18.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w800),
              )
            ],
          )
        ]),
      ]),
      SizedBox(height: 15)
    ]);
  }
}
