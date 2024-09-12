import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/features/home/presentation/views/widgets/custom_add_decrese_button.dart';
import 'package:nectar/features/home/presentation/views/widgets/five_stars.dart';
import 'package:nectar/features/home/presentation/views/widgets/nutions_section.dart';
import 'package:nectar/features/home/presentation/views/widgets/product_details_section.dart';
import 'package:nectar/features/home/presentation/views/widgets/product_image.dart';
import 'package:nectar/features/home/presentation/views/widgets/title_details_product.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
        appBar: AppBar(backgroundColor:  Colors.grey.shade300,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.ios_share_sharp,size: 28,),
          
        ),]  
    ),
  body:  SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
          children:[
            ProductImageCard(),
              SizedBox(height: 20,),
            TitleDetailsProduct(),
                  Divider(thickness: 1,color: Colors.grey.shade300,height: 30),
                  
      ProductDetailsSection(),
      SizedBox(height: 20,),
                    Divider(thickness: 1,color: Colors.grey.shade300,height: 30,),
              
                    const  NutionsSection(),
                
                  Divider(thickness: 1,color: Colors.grey.shade300,height: 10,),
            
                  FiveStars(),
                  SizedBox(height: 15,),
                     CustomButton(text: 'Add to Basket',x:0),
                  
                  ]
              ),
    ))  
        
       )
  ;
  }
}
