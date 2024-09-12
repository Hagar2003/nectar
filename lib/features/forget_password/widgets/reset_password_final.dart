import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';

class ResetPasswordFinal extends StatelessWidget {
  const ResetPasswordFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Reset Password', style: Styles.Text26),
            SizedBox(height: 15, width: MediaQuery.of(context).size.width),
            Text('Enter new password for your account to reset password',
                style: Styles.Text18.copyWith(
                    color: const Color.fromARGB(255, 136, 135, 135))),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Email',
              style: Styles.Text18,
            ),
            CustomTextField(),
            const Text(
              'Password',
              style: Styles.Text18,
            ),
            CustomTextField(),
            const Text(
              'Confirm password',
              style: Styles.Text18,
            ),
            CustomTextField(),
            const SizedBox(
              height: 30,
            ),
             CustomButton(x:0,
              text: 'Reset Password',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kReset);
              },
            )
          ],
        ),
      ));
  }
}
