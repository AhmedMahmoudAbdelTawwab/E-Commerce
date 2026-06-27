import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.titleText});
  String titleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: .center,
      child: Text(
        titleText,
        style: TextStyle(fontSize: 22, color: AppColors.textCoLor),
      ),
    );
  }
}
