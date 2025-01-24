import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';
import 'package:travel_app/presentation/core/widget/gradient_button.dart';
import 'package:travel_app/presentation/travel_info/widget/pricing_item.dart';

class TravelInfoCard extends StatelessWidget {
  const TravelInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        color: AppColors.greyColorF8,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(37),
          topRight: Radius.circular(37),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Manali',
              style: AppTypography.s16w6cBl,
            ),
            Text(
              'Manali is a beautiful hill station nestled in the Kullu Valley of Himachal Pradesh, India. Its a favorite destination for traveler s seeking adventure, nature, and cultural experiences.',
              style: AppTypography.s16w4cG73,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icon.gradientStar,
                      width: 16,
                    ),
                    SvgPicture.asset(
                      Assets.icon.gradientStar,
                      width: 16,
                    ),
                    SvgPicture.asset(
                      Assets.icon.gradientStar,
                      width: 16,
                    ),
                    SvgPicture.asset(
                      Assets.icon.gradientStar,
                      width: 16,
                    ),
                    SvgPicture.asset(
                      Assets.icon.gradientStar,
                      width: 16,
                    ),
                    SizedBox(width: 10),
                    Text(
                      '4.79',
                      style: AppTypography.s14w5cB,
                    ),
                    Text(
                      '(78 reviews)',
                      style: AppTypography.s14w4cGAE,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'See reviews',
                  style: AppTypography.s14w4cGAE,
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Pricing',
              style: AppTypography.s16w6cBl,
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 2,
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 15),
                children: [
                  PricingItem(
                    title: 'Flights',
                    description: 'from ₹2999',
                    color: AppColors.redColorB,
                    icon: Assets.icon.vector1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  PricingItem(
                    title: 'Hotels',
                    description: 'from ₹1999/ night',
                    color: AppColors.blueColorF,
                    icon: Assets.icon.vector2,
                  ),
                ],
              ),
            ),
            GradientButton(
              title: 'Plan trip',
              onTap: () {
                context.router.push(
                  CalenderScheduleRoute(),
                );
              },
              begin: Alignment.bottomLeft,
              horizontal: 1,
              vertical: 10,
              borderRadius: 10,
            ),
          ],
        ),
      ),
    );
  }
}
