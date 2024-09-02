import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/core/widgets/password_text_field.dart';
import 'package:nectar/features/login/presentation/views/widgets/last_part_login.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(child:
       Container(height: MediaQuery.of(context).size.height,
     decoration: 
     const BoxDecoration(image: 
     DecorationImage(image: AssetImage('assets/images/backSignLogin.png',
     ),
     fit: BoxFit.fill
     )),
      child: SafeArea(
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 30.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      const Center(child: 
      Image(image: AssetImage('assets/images/carrot.png'))),
          const  SizedBox(height: 80,),
          const Text('Loging',style:Styles.Text26),
          const SizedBox(height: 10,),
        Text('Enter your emails and password',
        style:Styles.Text16.copyWith(color: const Color.fromARGB(255, 110, 110, 110))),
        const SizedBox(height: 40,),
          const Text('Email',style:Styles.Text18 ,),
        CustomTextField(x:1),
        const SizedBox(height: 20,),
        const Text('password',style:Styles.Text18 ,),
        const PasswordTextField(),
        const SizedBox(height: 15,),
          const  LastPartLogin()
        ],
      ),
          ),
        ),
    )));
  }
}
