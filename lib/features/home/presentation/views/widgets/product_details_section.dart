import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nectar/core/utils/styles.dart';

class ProductDetailsSection extends StatefulWidget {
  const ProductDetailsSection({super.key});

  @override
  State<ProductDetailsSection> createState() => _ProductDetailsSectionState();
}

class _ProductDetailsSectionState extends State<ProductDetailsSection> {
  bool tr = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            Text('Product Details',style: Styles.Text23,),
              TextButton(
                      onPressed: () {
                        setState(() {
                          tr = !tr;
                        });
                      },
                      child: Icon(color: Colors.black,size:22,
                        tr ? FontAwesomeIcons.chevronDown : FontAwesomeIcons.chevronUp ,
                        
                      )),]),
        
        Text(
                ' Apples are nutritious.  Apples may be good for  weight loss.  apples may be  good for your heart. As part of a healtful and varied diet ',
                style: Styles.Text18,
                maxLines: tr ? 1 : 5,
                overflow: TextOverflow.ellipsis,
              ),
            
                  ]
      ),
    );
  }
}
