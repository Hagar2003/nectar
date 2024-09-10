import 'package:go_router/go_router.dart';
import 'package:nectar/features/forget_password/forget_password.dart';
import 'package:nectar/features/forget_password/widgets/congratulations.dart';
import 'package:nectar/features/home/presentation/views/bottom_navigation_bar.dart';
import 'package:nectar/features/login/presentation/views/login_view.dart';
import 'package:nectar/features/onBoarding/presentation/views/onbording_view.dart';
import 'package:nectar/features/sign_up/presentation/sign_up.dart';

abstract class AppRouter {
  static const kBoarding = '/OnBoarding';
  static const kForgetPass = '/ForgetPass';
  static const kReset = '/ResetDone';
  static const kLogin = '/Login';

  static final router = GoRouter(routes: [
    GoRoute(
      path: ('/'),
      //builder: (context, state) => const SignUp (),
      builder: (context, state) => const AppBottomNavigation(),
    ),
    GoRoute(
      path: kBoarding,
      builder: (context, state) => const OnbordingView(),
    ),
    GoRoute(
      path: kForgetPass,
      builder: (context, state) => const ForgetPassword(),
    ),
    GoRoute(
      path: kReset,
      builder: (context, state) => const Congratulations(),
    ),
    GoRoute(
      path: kLogin,
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: '/SignUp',
      builder: (context, state) => const SignUp(),
    )
  ]);
}
