import 'package:e_commerce/core/constant/validator.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/auth/domain/use_case/auth_use_case.dart';
import 'package:e_commerce/features/auth/presntation/view/screens/sign_in_screen.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_app_bar.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_button_widget.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_text_form_field_widget.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/text_rich_widget.dart';
import 'package:e_commerce/features/auth/presntation/view_model/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//Afify12345
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = "LoginScreen";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late final AuthCubit _cubit;
  final _formKey = GlobalKey<FormState>();

  void initstate() {
    super.initState();
    _cubit = AuthCubit(authUseCaseinjectable());
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: CustomAppBar(titleText: "Sign up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 24,
            children: [
              CustomTextFormFieldWidget(
                hintText: "Enter your email",
                text: "Email",
                controller: emailController,
                suffixIcon: null,
                validator: ValidatorApp.validateEmail,
              ),
              CustomTextFormFieldWidget(
                hintText: "Enter your Password",
                text: "Password",
                controller: passwordController,
                suffixIcon: null,
                validator: ValidatorApp.validatePassword,
              ),
              CustomButtonWidget(buttonText: "Login ", onTap: () {}),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BlocListener<AuthCubit, AuthState>(
        bloc: _cubit,
        listener: (context, state) {},
        child: TextRichWidget(
          firstText: "Don’t have an account? ",
          secoundText: "sign up",
          textRichOnTap: () {
            Navigator.pushReplacementNamed(context, SignInScreen.routeName);
            setState(() {});
          },
        ),
      ),
    );
  }
}
