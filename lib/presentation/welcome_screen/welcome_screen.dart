import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';
import 'package:travel_app/presentation/core/widget/app_background.dart';
import 'package:travel_app/presentation/core/widget/gradient_button.dart';
import 'package:travel_app/presentation/welcome_screen/widget/gradient_text.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
                  GradientButton(
                    onTap: () {
                      context.router.push(
                        AuthRoute(isFromSignUp: true),
                      );
                    },
                    title: "Login",
                    begin: Alignment.topCenter,
                    horizontal: 50,
                    vertical: 15,
                  ),
                  Spacer(),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        context.router.push(
                          AuthRoute(
                            isFromSignUp: false,
                          ),
                        );
                      },
                      child: Text(
                        'Register',
                        style: AppTypography.s20w6h30cBA,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 60)
            ],
          ),
        ),
      ),
    );
  }
}
