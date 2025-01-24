import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class DetailsInfoTile extends StatelessWidget {
  final String celsius;
  const DetailsInfoTile({super.key, required this.celsius});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.greyColorED,
              ),
              child: Center(
                child: SvgPicture.asset(Assets.icon.iconClock),
              ),
            ),
            SizedBox(width: 5),
            Text(
              '8 hours',
              style: AppTypography.s18w5cG,
            )
          ],
        ),
        SizedBox(width: 20),
        Row(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.greyColorED,
              ),
              child: Center(
                child: SvgPicture.asset(Assets.icon.iconCloud),
              ),
            ),
            SizedBox(width: 5),
            Text(
              celsius,
              style: AppTypography.s18w5cG,
            ),
          ],
        ),
        SizedBox(width: 20),
        Row(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.greyColorED,
              ),
              child: Center(
                child: SvgPicture.asset(Assets.icon.star),
              ),
            ),
            SizedBox(width: 5),
            Text(
              '4.5',
              style: AppTypography.s18w5cG,
            ),
          ],
        ),
      ],
    );
  }
}
