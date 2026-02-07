import 'package:flutter/material.dart';
import 'package:myapp/core/utils/app_strings.dart';

class CustomSkip extends StatelessWidget {
  const CustomSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topRight,
      child: Text(AppStrings.skip),
    );
  }
}
