import 'package:flutter/material.dart';
import 'package:nectar/features/home/presentation/views/widgets/product_details_body.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:ProductDetailsBody()
    );
  }
}
