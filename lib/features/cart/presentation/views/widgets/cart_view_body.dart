import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/features/cart/presentation/views/widgets/cart_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart',
        style: Styles.Text23,),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            CartItem(text: 'Bell Pepper Red ', pr: '\$2.90',index:8,),
              CartItem(text: 'organic Bananas', pr: '\$1.99',index:1),
                CartItem(text: 'Milk & Cheese  ', pr: '\$9.49',index:5),
                  CartItem(text: ' Coca & Sprite   ', pr: '\$4.55',index:3),
            CustomButton(text: 'Go to Checkout',x:1)
            ],
        ),
      )
    );
  }
}