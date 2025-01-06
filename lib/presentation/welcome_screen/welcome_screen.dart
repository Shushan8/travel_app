import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/core/consts/colors.dart';
import 'package:travel_app/core/consts/typography.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';
import 'package:travel_app/presentation/core/widget/globl_backround.dart';
import 'package:travel_app/presentation/welcome_screen/widget/button.dart';
import 'package:travel_app/presentation/welcome_screen/widget/gradient_text.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Spacer(flex: 3),
              Assets.images.travelImage.image(),
              GradientText(
                'Discover Your Dream Trips here',
                style: AppTypography.s35w6h52,
                gradient: AppColors.gradientColor,
              ),
              SizedBox(height: 20),
              Text(
                'Where Journeys Begin, Adventures Unfold, and Memories Last Forever.',
                style: AppTypography.s14w4h21cB,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(
                    buttonFunction: () {
                      context.router.push(
                        const AuthRoute(),
                      );
                    },
                    buttonText: "Login",
                    begin: true,
                  ),
                  Spacer(),
                  Expanded(
                    child: Text(
                      'Register',
                      style: AppTypography.s20w6h30cBA,
                    ),
                  )
                ],
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
