import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';
import 'package:nectar/features/forget_password/widgets/pin_code_text_field.dart';
import 'package:nectar/features/forget_password/widgets/reset_password_final.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});
  //var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height / 1.2,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50, width: MediaQuery.of(context).size.width),
                const Text('Reset Password', style: Styles.Text26),
                const SizedBox(
                  height: 15,
                ),
                Text('Enter the code that was sent to your email \n address',
                    style: Styles.Text18.copyWith(
                        color: const Color.fromARGB(255, 136, 135, 135))),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Enter the 5 digits code',
                  style: Styles.Text20,
                ),
                const SizedBox(height: 30),
                const PinCodedTextField(),
                const SizedBox(
                  height: 60,
                ),
                CustomButton(
                    text: 'Send Code',
                    onTap: () {
                      showBottomSheet(
                
                          context: context,
                          builder: (context) {
                            return Container(height:MediaQuery.of(context).size.height/1.4,
                          
                            child:   const ResetPasswordFinal());
                            });
                          
                          
                        
                    })
              ],
            ),
          ),
        ));
  }
}
