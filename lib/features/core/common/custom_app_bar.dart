import 'package:flutter/material.dart';
import 'package:e_commerce/features/core/utils/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({required this.titleText});
  String titleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: .center,
      child: Text(
        titleText,
        style: TextStyle(fontSize: 22, color: AppColors.appBarText),
      ),
    );
  }
}
