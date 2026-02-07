import 'package:flutter/material.dart';
import 'package:myapp/core/utils/app_strings.dart';
import 'package:myapp/core/widgets/custombtn.dart';
import 'package:myapp/features/on_boarding/ui/view/widgets/custom_skip.dart';
import 'package:myapp/features/on_boarding/ui/view/widgets/on_boarding_page_view.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              const CustomSkip(),
              const SizedBox(height: 20),
              OnBoeardingWidgetBody(),
              const SizedBox(height: 90),
              const Custombtn(text: AppStrings.next),
            ],
          ),
        ),
      ),
    );
  }
}
