import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/core/widgets/custom_text_field.dart';
import 'package:nectar/features/forget_password/widgets/custom_app_bar.dart';
import 'package:nectar/features/forget_password/widgets/reset_password.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 62.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
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
                  showBottomSheet(
                      //  isScrollControlled:h false,
                      showDragHandle: false,
                      context: context,
                      builder: (context) {
                        return SizedBox(height:MediaQuery.of(context).size.height/1.7,
                          child:const  ResetPassword());
                      });
                })
          ],
        ),
      ),
    ));
  }
}
