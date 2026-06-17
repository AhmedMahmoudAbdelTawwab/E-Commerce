import 'package:e_commerce/features/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  CustomTextFormFieldWidget({super.key, required this.hintText});
  String hintText;
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: AppColors.appBarText),
  );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: border,
        enabledBorder: border,
      ),
    );
  }
}
