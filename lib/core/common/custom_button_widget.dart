import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget({
    super.key,
    required this.onTap,
    required this.buttonText,
  });
  void Function() onTap;
  String buttonText;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        width: double.maxFinite,
        alignment: .center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.buttonBackGround,
        ),
        child: Text(
          buttonText,
          style: TextStyle(color: AppColors.buttonTextColor, fontSize: 14),
        ),
      ),
    );
  }
}
