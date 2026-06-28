import 'package:e_commerce/features/auth/presntation/view/widget/custom_app_bar.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_button_widget.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_text_form_field_widget.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/text_rich_widget.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          child: Column(
            spacing: 32,
            crossAxisAlignment: .start,
            children: [
              CustomTextFormFieldWidget(
                suffixIcon: null,
                text: "Email",
                hintText: "Enter your email",
                controller: nameController,
              ),

              CustomTextFormFieldWidget(
                suffixIcon: null,
                text: "Password",
                hintText: "Enter your password",
                controller: passwordController,
              ),

              CustomTextFormFieldWidget(
                suffixIcon: null,
                text: "Confirn Password",
                hintText: "Confirm your Password",
                controller: confirmPasswordController,
              ),

              CustomButtonWidget(onTap: () {}, buttonText: "Sign up"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: TextRichWidget(
        firstText: "Already have an account? ",
        secoundText: "Login",
        textRichOnTap: () {},
      ),
    );
  }
}
