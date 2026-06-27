import 'package:e_commerce/features/auth/presntation/view/widget/custom_app_bar.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_button_widget.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_text_form_field_widget.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_text_widget.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
            CustomTextWidget(data: "Email"),
            CustomTextFormFieldWidget(
              hintText: "Enter your email",
              controller: nameController,
            ),
            CustomTextWidget(data: "Password"),

            CustomTextFormFieldWidget(
              hintText: "Enter your password",
              controller: passwordController,
            ),
            CustomTextWidget(data: "Confirn Password"),

            CustomTextFormFieldWidget(
              hintText: "Confirm your Password",
              controller: confirmPasswordController,
            ),

            CustomButtonWidget(onTap: () {}, buttonText: "Sign up"),
          ],
        ),
      ),
    );
  }
}
