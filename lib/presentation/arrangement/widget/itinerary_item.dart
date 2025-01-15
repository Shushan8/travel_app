import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class ItineraryItem extends StatelessWidget {
  final String time;
  final String title;
  final String icon;
  final bool isActive;
  final bool isLast;
  const ItineraryItem({
    super.key,
    required this.time,
    required this.title,
    required this.icon,
    this.isActive = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              border: Border.all(
                color: AppColors.greyColor9F,
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 17,
                vertical: 11,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.icon.timeCircle),
                  SizedBox(width: 10),
                  Text(
                    time,
                    style: AppTypography.s18w4cB,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                border: Border.all(
                  color: AppColors.greyColor9F,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 7,
                  top: 11,
                  bottom: 11,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: AppTypography.s16w6cBl),
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        icon,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
