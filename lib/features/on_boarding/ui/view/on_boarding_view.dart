import 'package:flutter/material.dart';
import 'package:myapp/core/utils/app_assets.dart';
import 'package:myapp/core/utils/app_strings.dart';
import 'package:myapp/features/on_boarding/ui/view/widgets/on_boarding_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [const Text(AppStrings.skip), OnBoeardingWidgetBody()],
        ),
      ),
    );
  }
}
