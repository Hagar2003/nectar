import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';

class FiveStars extends StatelessWidget {
  const FiveStars({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          'Review',
          style: Styles.Text23,
        ),
        Row(
          children: [
      
             Icon(Icons.star, color: kYellow, size: 26),
            Icon(Icons.star, color:kYellow, size: 26),
            Icon(Icons.star, color:kYellow, size: 26),
            Icon(Icons.star, color:kYellow, size: 26),
            Icon(Icons.star, color: kYellow, size: 26),
            IconButton(onPressed: (){},icon: Icon(FontAwesomeIcons.chevronRight,  color: Colors.black,
                      size: 22,))
          ],
        )
      ]),
    );
  }
}
