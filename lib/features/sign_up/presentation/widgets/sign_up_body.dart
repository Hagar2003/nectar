import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/core/widgets/password_text_field.dart';
import 'package:nectar/features/sign_up/presentation/widgets/last_part_sign_up.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0,vertical: 26),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const SizedBox(height:30 ,),
        const Center(child: Image(image: AssetImage('assets/images/carrot.png'),width: 50,height: 60,)),
        const SizedBox(
          height: 70,
        ),
        const Text('Sign Up', style: Styles.Text26),
        const SizedBox(
          height: 10,
        ),
        Text('Enter your credentials to continue',
            style: Styles.Text16.copyWith(
                color: const Color.fromARGB(255, 110, 110, 110))),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Username',
          style: Styles.Text18,
        ),
        CustomTextField(),
        const SizedBox(
          height: 20,
        ),
        const Text(
        'Email',
          style: Styles.Text18,
        ),
        CustomTextField(x:1),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'password',
          style: Styles.Text18,
        ),
        const PasswordTextField(),
        const SizedBox(
          height: 15,
        ),
        const LastPartSignUp()
      ]),
    );
  }
}
