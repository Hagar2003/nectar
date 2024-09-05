import 'package:flutter/material.dart';
import 'package:nectar/features/onBoarding/presentation/views/widgets/onboarding_body.dart';

class OnbordingView extends StatelessWidget {
  const OnbordingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: 
     const BoxDecoration(image: 
     DecorationImage(image: AssetImage('assets/images/background.jpg'),
     fit: BoxFit.cover
     ),
        ),
        child:const OnBoardingBody(),);
  }
}
