import 'package:go_router/go_router.dart';
import 'package:nectar/features/home/presentation/views/splash_view.dart';
import 'package:nectar/features/home/presentation/views/onbording_view.dart';

abstract class AppRouter {
  static const kBoarding = '/OnBoarding';
  
    
  static final router = GoRouter(routes: [
    GoRoute(
      path: ('/'),
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kBoarding,
      builder: (context, state) => const OnbordingView(),
  )]);
}
