import 'package:flutter/material.dart';
import 'package:myapp/core/utils/app_assets.dart';
import 'package:myapp/core/utils/app_colors.dart';
import 'package:myapp/core/utils/app_text_style.dart';
import 'package:myapp/features/on_boarding/ui/view/widgets/custom_smoth_page_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoeardingWidgetBody extends StatelessWidget {
  OnBoeardingWidgetBody({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(AppAssets.onBoarding),
              const SizedBox(height: 20),
              CustomSmothPageIndicator(controller: _controller),
              Text(
                'export the world with us',
                style: AppTextStyle.poppins500style24,
              ),
              Text(
                'export the world with us',
                style: AppTextStyle.poppins400style18,
              ),
            ],
          );
        },
      ),
    );
  }
}
