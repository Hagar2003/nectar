import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/features/forget_password/widgets/reset_password.dart';

class ForgetPasswordBody extends StatefulWidget {
  const ForgetPasswordBody({super.key});

  @override
  State<ForgetPasswordBody> createState() => _ForgetPasswordBodyState();
}

class _ForgetPasswordBodyState extends State<ForgetPasswordBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 62.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
                child: Image(image: AssetImage('assets/images/carrot.png'))),
            const SizedBox(
              height: 80,
            ),
            const Text('Forget Password', style: Styles.Text26),
            const SizedBox(
              height: 10,
            ),
            Text(
                'Enter your email for verification process we will send 5 digits code to your email',
                style: Styles.Text16.copyWith(
                    color: const Color.fromARGB(255, 110, 110, 110))),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Email',
              style: Styles.Text18,
            ),
            CustomTextField(),
            const SizedBox(height: 50),
            CustomButton(
                text: 'Continue',
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: false,
                      context: context,
                      builder: (context) {
                        return const ResetPassword();
                      });
                })
          ],
        ),
      ),
    );
  }
}
