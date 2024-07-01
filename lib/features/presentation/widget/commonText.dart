import 'package:e_commerce_app/core/colors.dart';
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  const CommonText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: AppColors.primaryclr,
          fontSize: 18,
          fontWeight: FontWeight.w500),
    );
  }
}
