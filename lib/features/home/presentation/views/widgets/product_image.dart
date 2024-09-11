import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/app_images.dart';


class ProductImageCard extends StatelessWidget {
  const ProductImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration:  BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        // image: DecorationImage(
        //   fit: BoxFit.cover,
        //   image: AssetImage(AppImages.backgroundProduct),
    //    ),
      ),
      child: Image.asset(AppImages.apple),
    );
  }
}