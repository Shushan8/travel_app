import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class PricingItem extends StatelessWidget {
  final String title;
  final String description;
  final String icon;
  final Color color;

  const PricingItem(
      {super.key,
      required this.title,
      required this.description,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(30),
              ),
              child: SvgPicture.asset(icon),
            ),
            SizedBox(width: 20),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: AppTypography.s16w6cBl),
                      Text(description, style: AppTypography.s16w4cG),
                    ],
                  ),
                  SvgPicture.asset(Assets.icon.arrowDown),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Divider()
      ],
    );
  }
}
