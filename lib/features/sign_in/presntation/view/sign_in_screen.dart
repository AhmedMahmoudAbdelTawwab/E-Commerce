import 'package:e_commerce/features/core/common/custom_app_bar.dart';
import 'package:e_commerce/features/core/common/custom_text_form_field_widget.dart';
import 'package:e_commerce/features/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: CustomAppBar(titleText: "Sign up"),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Form(
        child: Column(
          children: [
            CustomTextFormFieldWidget(hintText: "Enter your email"),
            CustomTextFormFieldWidget(hintText: "Enter your password"),
          ],
        ),
      ),
    );
  }
}
