import 'package:go_router/go_router.dart';
import 'package:nectar/features/forget_password/forget_password.dart';
import 'package:nectar/features/forget_password/widgets/congratulations.dart';
import 'package:nectar/features/login/presentation/views/login_view.dart';
import 'package:nectar/features/onBoarding/presentation/views/onbording_view.dart';
import 'package:nectar/features/sign_up/presentation/sign_up.dart';

abstract class AppRouter {
  static const kBoarding = '/OnBoarding';
    static const kForgetPass = '/ForgetPass';
  
    
  static final router = GoRouter(routes: [
    GoRoute(
      path: ('/'),
      builder: (context, state) => const SignUp(),
    //    builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kBoarding,
      builder: (context, state) => const OnbordingView(),
  ),
    GoRoute(
      path: kForgetPass,
      builder: (context, state) => const ForgetPassword(),
  ) ,
    GoRoute(
      path: '/ResetDone',
      builder: (context, state) => const Congratulations(),) ]  );
}
