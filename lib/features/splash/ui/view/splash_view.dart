import 'package:flutter/material.dart';
import 'package:myapp/core/functions/navigate.dart';
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
    delayedNavigateMethod();
    super.initState();
  }

  void delayedNavigateMethod() {
      Future.delayed(const Duration(seconds: 3), () {
      routerMethod(context, '/onBoarding');
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
