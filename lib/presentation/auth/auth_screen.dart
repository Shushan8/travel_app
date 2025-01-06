import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/core/consts/colors.dart';
import 'package:travel_app/core/consts/typography.dart';
import 'package:travel_app/presentation/auth/widget/auth_app_bar.dart';
import 'package:travel_app/presentation/auth/widget/auth_icons_grup.dart';
import 'package:travel_app/presentation/auth/widget/auth_input_decoration.dart';
import 'package:travel_app/presentation/core/widget/globl_backround.dart';
import 'package:travel_app/presentation/welcome_screen/widget/button.dart';
import 'package:travel_app/presentation/welcome_screen/widget/gradient_text.dart';

@RoutePage()
// ignore: must_be_immutable
class AuthScreen extends StatefulWidget {
  bool isCratedAcaunt;
  AuthScreen({super.key, required this.isCratedAcaunt});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  void isCratedAcauntFunction() {
    setState(() {
      widget.isCratedAcaunt = !widget.isCratedAcaunt;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AuthAppBar(),
              GradientText(
                widget.isCratedAcaunt ? 'Login here' : 'Create Account',
                gradient: AppColors.gradientColor,
                style: AppTypography.s30w7h,
              ),
            widget.isCratedAcaunt ?  Spacer():SizedBox(height: 20,),
              Row(
                children: [
                  Spacer(),
                  widget.isCratedAcaunt
                      ? Expanded(
                          flex: 4,
                          child: Text(
                            textAlign: TextAlign.center,
                            'Welcome back you’ve been missed!',
                            style: AppTypography.s20w6h30cBA,
                          ))
                      : Expanded(
                          flex: 6,
                          child: Text(
                            'Create an account so you can explore all the existing jobs',
                            style: AppTypography.s14w5h21cB,
                            textAlign: TextAlign.center,
                          )),
                  Spacer(),
                ],
              ),
              Spacer(flex: 2,),
              AuthInputDecoration(
                authBorderSideNone: true,
                authHintText: 'Email',
              ),
              SizedBox(height: 25),
              AuthInputDecoration(
                authBorderSideNone: false,
                authHintText: 'Password',
              ),
              SizedBox(height: 25),
              widget.isCratedAcaunt
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
                      authBorderSideNone: false,
                      authHintText: 'Confirm Password',
                    ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: Button(
                  buttonText: widget.isCratedAcaunt ? 'Sign in' : 'Sign up',
                  buttonFunction: () {},
                  begin: false,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () => isCratedAcauntFunction(),
                child: Text(
                  widget.isCratedAcaunt
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
    );
  }
}
