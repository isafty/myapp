import 'package:flutter/material.dart';
import 'package:myapp/core/utils/app_strings.dart';
import 'package:myapp/core/utils/app_text_style.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppStrings.appName, style: AppTextStyle.pacifico400style64),
      ),
    );
  }
}
