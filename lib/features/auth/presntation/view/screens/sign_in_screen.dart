import 'package:e_commerce/core/constant/validator.dart';
import 'package:e_commerce/features/auth/domain/use_case/auth_use_case.dart';
import 'package:e_commerce/features/auth/presntation/view/screens/login_screen.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_app_bar.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_button_widget.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/custom_text_form_field_widget.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/auth/presntation/view/widget/text_rich_widget.dart';
import 'package:e_commerce/features/auth/presntation/view_model/cubit/auth_cubit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const String routeName = "SignInScreen";
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late final AuthCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = AuthCubit(authUseCaseinjectable());
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

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
          key: _formKey,
          child: Column(
            spacing: 32,
            crossAxisAlignment: .start,
            children: [
              CustomTextFormFieldWidget(
                suffixIcon: null,
                text: "Email",
                hintText: "Enter your email",
                controller: emailController,
                validator: ValidatorApp.validateEmail,
              ),

              CustomTextFormFieldWidget(
                suffixIcon: null,
                text: "Password",
                hintText: "Enter your password",
                controller: passwordController,
                validator: ValidatorApp.validatePassword,
              ),

              CustomTextFormFieldWidget(
                suffixIcon: null,
                text: "Confirn Password",
                hintText: "Confirm your Password",
                controller: confirmPasswordController,
                validator: (val) => ValidatorApp.validateConfirmPassword(
                  val,
                  passwordController.text,
                ),
              ),

              BlocListener<AuthCubit, AuthState>(
                bloc: _cubit,
                listener: (context, state) {
                  if (state is AuthLoading) {
                    showDialog(
                      context: context,
                      builder: (context) =>
                          const Center(child: CircularProgressIndicator()),
                    );
                  }
                  if (state is AuthSuccess) {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, LoginScreen.routeName);
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
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _cubit.regstier(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                    }
                  },
                  buttonText: "Sign up",
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: TextRichWidget(
        firstText: "Already have an account? ",
        secoundText: "Login",
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            Navigator.pushReplacementNamed(context, LoginScreen.routeName);
            setState(() {});
          },
      ),
    );
  }
}
