import 'package:flutter/material.dart';
import 'package:myapp/core/functions/navigate.dart';
import 'package:myapp/features/on_boarding/ui/view/widgets/custom_get_buttons.dart';
import 'package:myapp/features/on_boarding/ui/view/widgets/custom_skip.dart';
import 'package:myapp/features/on_boarding/ui/view/widgets/on_boarding_page_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              CustomSkip(
                onTap: () {
                  pushReplaceNavigate(context, '/login');
                },
              ),
              const SizedBox(height: 20),
              OnBoeardingWidgetBody(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {});
                  currentPageIndex = index;
                },
              ),
              const SizedBox(height: 90),
              GetButtons(
                currentPageIndex: currentPageIndex,
                controller: _controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
