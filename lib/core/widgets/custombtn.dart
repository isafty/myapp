import 'package:flutter/material.dart';
import 'package:myapp/core/utils/app_colors.dart';
import 'package:myapp/core/utils/app_text_style.dart';

class Custombtn extends StatelessWidget {
  const Custombtn({super.key, required this.text, required this.onPressed});
  final Color color = AppColors.primaryColor;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyle.poppins400style18.copyWith(
            color: AppColors.offWhite,
          ),
        ),
      ),
    );
  }
}
