import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/core/widgets/custom_button.dart';

class LastPartSignUp extends StatelessWidget {
  const LastPartSignUp({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(children: [
      const SizedBox(height: 10),
      Row(children: [
        const Text('By continuing you agree to our',style: Styles.Text16,),
        Text('Terms of Service ',style: Styles.Text16.copyWith(color: kPrimaryColor),),]),
        const SizedBox(height: 5,),
        Row(
          children: [
            const Text('and ',style: Styles.Text16,),
            Text('Privacy Policy  ',style: Styles.Text16.copyWith(color: kPrimaryColor),),
          ],
        ),
          const SizedBox(height: 20),
       CustomButton(text: 'Sign Up',x:0),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Already have an account?',
              style: Styles.Text18.copyWith(
                  color: const Color.fromARGB(255, 20, 19, 19))),
          GestureDetector(onTap: () {
              GoRouter.of(context).push('/Login');
            },
            child: Text(
              ' Login',
              style: Styles.Text18.copyWith(color: kPrimaryColor),
            ),
          )
        ],
      )
    ]);
  }
}
