import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormFieldWidget extends StatelessWidget {
  CustomTextFormFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
  });
  String hintText;
  TextEditingController controller;
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: AppColors.textCoLor),
  );
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: border,
        enabledBorder: border,
      ),
    );
  }
}
