import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';
import 'package:travel_app/presentation/core/widget/gradient_button.dart';

class SelectDate extends StatelessWidget {
  const SelectDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(13),
                    child: SvgPicture.asset(
                      Assets.icon.a2User,
                    ),
                  ),
                  hintText: "Query journey",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.brightRedOrange,
                borderRadius: BorderRadius.circular(30),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: Center(
                    child: SvgPicture.asset(Assets.icon.send),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Send to your email',
              style: AppTypography.s16w4cBE,
            ),
            Switch(
              value: true,
              onChanged: (bool value) {},
              activeTrackColor: AppColors.greyColorED,
              activeColor: AppColors.brightRedOrange,
            ),
          ],
        ),
        SizedBox(height: 20),
        GradientButton(
          title: 'Next step',
          onTap: () {
            context.router.push(
              ArrangementRoute(),
            );
          },
          begin: Alignment.topLeft,
          horizontal: 1,
          vertical: 15,
          borderRadius: 10,
        ),
      ],
    );
  }
}
