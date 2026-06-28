import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormFieldWidget extends StatelessWidget {
  CustomTextFormFieldWidget({
    super.key,
    required this.hintText,
    required this.text,
    required this.controller,
    required this.suffixIcon,
  });
  String hintText;
  String text;
  Widget? suffixIcon;
  TextEditingController controller;
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: AppColors.textCoLor),
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 8,
      children: [
        Text(text, style: TextStyle(fontSize: 18, color: AppColors.textCoLor)),
        TextFormField(
          controller: controller,
          autocorrect: false,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            focusedBorder: border,
            enabledBorder: border,
          ),
        ),
      ],
    );
  }
}
