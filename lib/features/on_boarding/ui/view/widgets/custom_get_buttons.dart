import 'package:flutter/material.dart';
import 'package:myapp/core/functions/navigate.dart';
import 'package:myapp/core/utils/app_strings.dart';
import 'package:myapp/core/widgets/custombtn.dart';
import 'package:myapp/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:myapp/features/on_boarding/ui/view/function/on_boarding_fn.dart';

class GetButtons extends StatelessWidget {
  const GetButtons({
    super.key,
    required this.currentPageIndex,
    required this.controller,
  });
  final int currentPageIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return currentPageIndex == onBoardingData.length - 1
        ? Column(
            children: [
              Custombtn(
                text: AppStrings.createAccount,
                onPressed: () {
                  onBoardingVisited();
                  pushReplaceNavigate(context, '/signup');
                },
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  onBoardingVisited();
                  pushReplaceNavigate(context, '/login');
                },
                child: Text(AppStrings.loginNow),
              ),
            ],
          )
        : Custombtn(
            text: AppStrings.next,
            onPressed: () {
              controller.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          );
  }
}
