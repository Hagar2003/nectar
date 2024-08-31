import 'package:flutter/material.dart';
import 'package:nectar/features/sign_up/presentation/widgets/sign_up_body.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SignUpBody()));
  }
}
