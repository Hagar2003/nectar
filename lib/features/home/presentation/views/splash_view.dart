import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/app_router.dart';
import 'package:nectar/features/home/presentation/views/onbording_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
    //  GoRouter.of(context).push('/OnBoarding');
      Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>const  OnbordingView()));
      super.initState();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('assets/images/splashscreenimage.png',
                  width: 267.42, height: 68.61),
                  
            )
          ],
        ));
  }
}
