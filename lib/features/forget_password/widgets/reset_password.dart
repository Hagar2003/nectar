import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/features/forget_password/widgets/pin_code_text_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50,
          width:MediaQuery.of(context).size.width),
            const Text('Reset Password', style: Styles.Text26),
              const SizedBox(
                height: 15,
              ),
              Text(
                  'Enter the code that was sent to your email \n address',
                  style: Styles.Text18.copyWith(
                      color: const Color.fromARGB(255, 136, 135, 135))),
                      const SizedBox(height: 25,),
                      const Text('Enter the 5 digits code',
                      style: Styles.Text20,),
                      const SizedBox(height:30),
                       const PinCodedTextField(),
                       const SizedBox(height: 60,),
                       const CustomButton(text: 'Send Code')
        ],
      ),
    );
  }
}