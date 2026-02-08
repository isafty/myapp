import 'package:flutter/material.dart';
import 'package:myapp/core/utils/app_strings.dart';

class CustomSkip extends StatelessWidget {
  const CustomSkip({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Align(
        alignment: Alignment.topRight,
        child: Text(AppStrings.skip),
      ),
    );
  }
}
