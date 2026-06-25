import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextWidget extends StatelessWidget {
  CustomTextWidget({super.key, required this.data});
  String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: 18, color: AppColors.textCoLor),
    );
  }
}
