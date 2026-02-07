import 'package:flutter/material.dart';
import 'package:myapp/core/utils/app_assets.dart';
import 'package:myapp/core/utils/app_text_style.dart';
import 'package:myapp/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:myapp/features/on_boarding/ui/view/widgets/custom_smoth_page_indicator.dart';

class OnBoeardingWidgetBody extends StatelessWidget {
  OnBoeardingWidgetBody({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: double.infinity,
      child: PageView.builder(
        controller: _controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBoardingData[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomSmothPageIndicator(controller: _controller),
              Text(
                onBoardingData[index].title,
                style: AppTextStyle.poppins500style24,
              ),
              Text(
                onBoardingData[index].subtitle,
                style: AppTextStyle.poppins400style18,
              ),
            ],
          );
        },
      ),
    );
  }
}
