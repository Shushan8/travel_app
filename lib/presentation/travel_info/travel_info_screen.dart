import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/travel_info/widget/travel_info_card.dart';

@RoutePage()
class SpecificItineraryScreen extends StatelessWidget {
  const SpecificItineraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.sliderImage.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 70,
                left: 23,
              ),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.greyColor,
                  ),
                  child: Center(
                    child: SvgPicture.asset(Assets.icon.arrowLeft),
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 20),
              child: Text(
                'Manali',
                style: AppTypography.s42w5cW,
              ),
            ),
            Expanded(flex: 3, child: TravelInfoCard())
          ],
        ),
      ),
    );
  }
}
