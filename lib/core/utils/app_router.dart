import 'package:go_router/go_router.dart';
import 'package:nectar/features/login/presentation/views/login_view.dart';
import 'package:nectar/features/onBoarding/presentation/views/onbording_view.dart';

abstract class AppRouter {
  static const kBoarding = '/OnBoarding';
  
    
  static final router = GoRouter(routes: [
    GoRoute(
      path: ('/'),
      builder: (context, state) => const Login(),
    ),
    GoRoute(
      path: kBoarding,
      builder: (context, state) => const OnbordingView(),
  )]);
}
