import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
//import 'package:nectar/features/onBoarding/presntation/views/widgets/custom_button.dart';

//import '../../../../onBoarding/presntation/views/widgets/custom_button.dart';
//import 'package:nectar/features/onBoarding/presntation/views/widgets/custom_button.dart';

class LastPartLogin extends StatelessWidget {
  const LastPartLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: Text(
            'Forgot password?',
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 30),
        const CustomButton(text: 'Log in'),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don’t have an account?',
                style: Styles.Text18.copyWith(
                    color: const Color.fromARGB(255, 73, 70, 70))),
            Text(
              ' SignUp',
              style: Styles.Text18.copyWith(color: kPrimaryColor),
            )
          ],
        )
      ],
    );
  }
}
