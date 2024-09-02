import 'package:flutter/material.dart';
import 'package:nectar/features/sign_up/presentation/widgets/sign_up_body.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(child: 
        Container(height: MediaQuery.of(context).size.height,
     decoration: 
     const BoxDecoration(image: 
     DecorationImage(image: AssetImage('assets/images/backSignLogin.png'),
     fit: BoxFit.fill
     ),
     ),
        child: const SignUpBody())));
  }
}
