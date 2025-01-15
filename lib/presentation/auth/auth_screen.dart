import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/application/bloc/auth_bloc.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/core/widget/custom_bar.dart';
import 'package:travel_app/presentation/auth/widget/social_media.dart';
import 'package:travel_app/presentation/auth/widget/input_field.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';
import 'package:travel_app/presentation/core/widget/app_background.dart';
import 'package:travel_app/presentation/core/widget/gradient_button.dart';
import 'package:travel_app/presentation/welcome_screen/widget/gradient_text.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  final bool isFromSignUp;
  const AuthScreen({
    super.key,
    required this.isFromSignUp,
  });

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  late bool toggleSignUp;

  @override
  void initState() {
    super.initState();
    toggleSignUp = widget.isFromSignUp;
  }

  void toggleAccount() {
    setState(() {
      toggleSignUp = !toggleSignUp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomBar(),
      body: AppBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GradientText(
                    toggleSignUp ? 'Login here' : 'Create Account',
                    gradient: AppColors.gradientColor,
                    style: AppTypography.s30w7,
                  ),
                  SizedBox(height: 20),
                  toggleSignUp
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Welcome back you’ve been missed!',
                            style: AppTypography.s20w6cBA,
                          ),
                        )
                      : Text(
                          'Create an account so you can explore all the existing jobs',
                          style: AppTypography.s14w5cB,
                          textAlign: TextAlign.center,
                        ),
                  SizedBox(height: 70),
                  InputField(
                    controller: emailController,
                    hintText: 'Email',
                  ),
                  SizedBox(height: 25),
                  InputField(
                    controller: passwordController,
                    hintText: 'Password',
                  ),
                  SizedBox(height: 25),
                  toggleSignUp
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Forgot your password?',
                              style: AppTypography.s14w6h21cBO,
                            ),
                          ],
                        )
                      : InputField(
                          controller: confirmPasswordController,
                          hintText: 'Confirm Password',
                        ),
                  toggleSignUp ? SizedBox(height: 49) : SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: BlocListener<AuthBloc, AuthState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          loading: () {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                          success: () {
                            context.router.push(
                              HomeRoute(),
                            );
                          },
                          failure: (error) {
                            Navigator.of(context).pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Ошибка: $error',
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: SizedBox(
                        width: double.infinity,
                        child: GradientButton(
                          horizontal: 10,
                          vertical: 15,
                          title: toggleSignUp ? 'Sign in' : 'Sign up',
                          onTap: () {
                            if (emailController.text.isEmpty ||
                                passwordController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Заполните все поля!',
                                  ),
                                ),
                              );
                              return;
                            }
                            context.read<AuthBloc>().add(
                                  toggleSignUp
                                      ? AuthEvent.logIn(
                                          email: emailController.text,
                                          password: passwordController.text,
                                        )
                                      : AuthEvent.signUpWithEmailAndPassword(
                                          email: emailController.text,
                                          password: passwordController.text,
                                        ),
                                );
                          },
                          begin: Alignment.topLeft,
                          borderRadius: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  InkWell(
                    onTap: () => toggleAccount(),
                    child: Text(
                      toggleSignUp
                          ? 'Create new account'
                          : 'Already have an account',
                      style: AppTypography.s14w6cG49,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Or continue with',
                    style: AppTypography.s14w6h21cBO,
                  ),
                  SizedBox(height: 30),
                  SocialMedia(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
