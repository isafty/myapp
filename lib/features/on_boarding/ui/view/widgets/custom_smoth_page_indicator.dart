import 'package:flutter/material.dart';
import 'package:myapp/core/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmothPageIndicator extends StatelessWidget {
  const CustomSmothPageIndicator({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.deepBrown,
        dotColor: AppColors.deepGrey,
        dotHeight: 10,
        dotWidth: 10,
      ),
    );
  }
}
