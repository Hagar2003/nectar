
import 'package:flutter/material.dart';
import 'package:nectar/features/home/presentation/views/widgets/custom_button.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 400,),
          Image.asset('assets/images/logo.png',
          height: 56
          ,width:48),
          const SizedBox(height: 30,),
          const Text('Welcome            to our store',
          textAlign: TextAlign.center,  
          style: TextStyle(fontWeight: FontWeight.w500,
          fontSize: 50,
          color: Colors.white,  decoration: TextDecoration.none,
          fontFamily: 'Gilory',
          ),
        ),
        const SizedBox(height: 10,),
      const  Text('Ger your groceries in as fast as one hour',
          style: TextStyle(fontWeight: FontWeight.w700,
          decoration: TextDecoration.none,
          color: Colors.grey,fontSize: 20,
          fontFamily: 'Gilory-Medium',)),
          const SizedBox(height: 30,),
          const CustomButton(text: 'Get Started')
      
        ],
      ),
    );
  }
}