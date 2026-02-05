import 'package:go_router/go_router.dart';
import 'package:myapp/features/on_boarding/ui/view/on_boarding_view.dart';
import 'package:myapp/features/splash/ui/view/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnBoardingView(),
    ),
  ],
);
