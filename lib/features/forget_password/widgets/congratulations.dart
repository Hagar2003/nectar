import 'package:flutter/material.dart';
import 'package:nectar/core/utils/styles.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Padding(
        padding: EdgeInsets.symmetric(vertical: 62.0,horizontal: 32),
        child: Column(
          children: [SizedBox(height: 70,),
            Image(image: AssetImage('assets/images/congratulations.png'),width: 200,),
            SizedBox(height: 50,),
            Text('Congratulations',style: Styles.Text26,),
            SizedBox(height: 30,),
            Text('Your change password is success welcome to our app'
            ,textAlign: TextAlign.center,
            style: Styles.Text18,)
          ],
        ),
      ),
    );
  }
}