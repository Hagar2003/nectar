import 'package:flutter/material.dart';
import 'package:nectar/features/forget_password/widgets/forget_password_body.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: Container(height: MediaQuery.of(context).size.height,
     decoration: 
     const BoxDecoration(image: 
     DecorationImage(image: AssetImage('assets/images/backSignLogin.png'),
     fit: BoxFit.fill
     )),child:const ForgetPasswordBody())));
  }
}
