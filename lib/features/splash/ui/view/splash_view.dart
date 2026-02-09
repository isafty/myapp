import 'package:flutter/material.dart';
import 'package:myapp/core/database/cach/cach_helper.dart';
import 'package:myapp/core/functions/navigate.dart';
import 'package:myapp/core/services/service_locator.dart';
import 'package:myapp/core/utils/app_strings.dart';
import 'package:myapp/core/utils/app_text_style.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
    isOnBoardingVisited == true
        ? delayedNavigateMethod(context, '/login')
        : delayedNavigateMethod(context, '/onBoarding');
    super.initState();
  }

  void delayedNavigateMethod(BuildContext context, String path) {
    Future.delayed(const Duration(seconds: 3), () {
      pushReplaceNavigate(context, path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppStrings.appName, style: AppTextStyle.pacifico400style64),
      ),
    );
  }
}
