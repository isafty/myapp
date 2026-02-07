import 'package:flutter/material.dart';
import 'package:myapp/core/utils/app_strings.dart';
import 'package:myapp/core/widgets/custombtn.dart';
import 'package:myapp/features/on_boarding/ui/view/widgets/custom_skip.dart';
import 'package:myapp/features/on_boarding/ui/view/widgets/on_boarding_page_view.dart';

class OnBoardingView extends StatefulWidget {
 OnBoardingView({super.key});


  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
    final PageController _controller = PageController(initialPage: 0);
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
              OnBoeardingWidgetBody(controller: _controller,),
              const SizedBox(height: 90),
              Custombtn(text: AppStrings.next,onPressed: (){
                _controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
              },),
            ],
          ),
        ),
      ),
    );
  }
}
