import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/application/bloc/auth_bloc.dart';
import 'package:travel_app/application/bloc/auth_event.dart';
import 'package:travel_app/application/bloc/auth_state.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/auth/widget/auth_app_bar.dart';
import 'package:travel_app/presentation/auth/widget/auth_icons_grup.dart';
import 'package:travel_app/presentation/auth/widget/auth_input_decoration.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';
import 'package:travel_app/presentation/core/widget/globl_backround.dart';
import 'package:travel_app/presentation/welcome_screen/widget/button.dart';
import 'package:travel_app/presentation/welcome_screen/widget/gradient_text.dart';

@RoutePage()
// ignore: must_be_immutable
class AuthScreen extends StatefulWidget {
 bool isCratedAccount;
   AuthScreen({super.key, required this.isCratedAccount});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void isCratedAccountFunction() {
    setState(() {
      widget.isCratedAccount = !widget.isCratedAccount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthStateSuccessful) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const SizedBox();
              },
            ),
          );
        }
      },
      child: Scaffold(
        body: BackgroundWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AuthAppBar(),
                GradientText(
                  widget.isCratedAccount ? 'Login here' : 'Create Account',
                  gradient: AppColors.gradientColor,
                  style: AppTypography.s30w7h,
                ),
                widget.isCratedAccount
                    ? Spacer()
                    : SizedBox(
                        height: 20,
                      ),
                Row(
                  children: [
                    Spacer(),
                    widget.isCratedAccount
                        ? Expanded(
                            flex: 4,
                            child: Text(
                              textAlign: TextAlign.center,
                              'Welcome back you’ve been missed!',
                              style: AppTypography.s20w6h30cBA,
                            ),
                          )
                        : Expanded(
                            flex: 6,
                            child: Text(
                              'Create an account so you can explore all the existing jobs',
                              style: AppTypography.s14w5h21cB,
                              textAlign: TextAlign.center,
                            ),
                          ),
                    Spacer(),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
                AuthInputDecoration(
                  textFildController: emailController,
                  authBorderSideNone: true,
                  authHintText: 'Email',
                ),
                SizedBox(height: 25),
                AuthInputDecoration(
                  textFildController: passwordController,
                  authBorderSideNone: false,
                  authHintText: 'Password',
                ),
                SizedBox(height: 25),
                widget.isCratedAccount
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot your password?',
                            style: AppTypography.s14w6h21cBO,
                          ),
                        ],
                      )
                    : AuthInputDecoration(
                        textFildController: confirmPasswordController,
                        authBorderSideNone: false,
                        authHintText: 'Confirm Password',
                      ),
                Spacer(),
                SizedBox(
                    width: double.infinity,
                    child: BlocConsumer<AuthBloc, AuthState>(
                        listener: (context, state) {
                      if (state is AuthStateSuccessful) {
                        context.router.push(
                          WelcomeRoute(),
                        );
                      }
                    }, builder: (context, state) {
                      if (state is AuthStateInProgress) {
                        return const CircularProgressIndicator();
                      }
                      return Button(
                        buttonText:
                            widget.isCratedAccount ? 'Sign in' : 'Sign up',
                        buttonFunction: widget.isCratedAccount
                            ? () {
                                if (emailController.text.isEmpty ||
                                    passwordController.text.isEmpty) {
                                  return;
                                }
                                context.read<AuthBloc>().add(
                                      LoginWithEmailAndPassword(
                                        emailController.text,
                                        passwordController.text,
                                      ),
                                    );
                              }
                            : () {
                                if (emailController.text.isEmpty ||
                                    passwordController.text.isEmpty) {
                                  return;
                                }
                                context.read<AuthBloc>().add(
                                      SignUpWhitEmailAndPassword(
                                        emailController.text,
                                        passwordController.text,
                                      ),
                                    );
                              },
                        begin: false,
                      );
                    })),
                Spacer(),
                InkWell(
                  onTap: () => isCratedAccountFunction(),
                  child: Text(
                    widget.isCratedAccount
                        ? 'Create new account'
                        : 'Already have an account',
                    style: AppTypography.s14w6h21cG49,
                  ),
                ),
                Spacer(),
                Text(
                  'Or continue with',
                  style: AppTypography.s14w6h21cBO,
                ),
                Spacer(),
                AuthIconsGrup(),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
