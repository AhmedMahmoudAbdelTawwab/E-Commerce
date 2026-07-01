import 'package:e_commerce/core/constant/validator.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/auth/domain/use_case/auth_use_case.dart';
import 'package:e_commerce/features/auth/presntation/view/screens/sign_in_screen.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_app_bar.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_button_widget.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_text_form_field_widget.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/text_rich_widget.dart';
import 'package:e_commerce/features/auth/presntation/view_model/cubit/auth_cubit.dart';
import 'package:e_commerce/features/home/presentation/view/screens/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
  final _formKey = GlobalKey<FormState>();
  late final AuthCubit _cubitLogin;

  @override
  void initState() {
    super.initState();
    _cubitLogin = AuthCubit(authUseCaseinjectable());
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
              BlocListener<AuthCubit, AuthState>(
                bloc: _cubitLogin,
                listener: (context, state) {
                  if (state is AuthLoading) {
                    showDialog(
                      context: context,
                      builder: (context) =>
                          const Center(child: CircularProgressIndicator()),
                    );
                  }
                  if (state is AuthLoginSuccess) {
                    Navigator.of(context).pop();
                    Navigator.pushReplacementNamed(
                      context,
                      HomeScreen.routeName,
                    );
                  }
                  if (state is AuthErorr) {
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Error"),
                        content: Text(state.authErorrMessage),
                      ),
                    );
                  }
                },
                child: CustomButtonWidget(
                  buttonText: "Login ",
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _cubitLogin.login(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: TextRichWidget(
        firstText: "Don’t have an account? ",
        secoundText: "sign up",
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            Navigator.pushReplacementNamed(context, SignInScreen.routeName);
            setState(() {});
          },
      ),
    );
  }
}
