import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class ScheduleItem extends StatelessWidget {
  final DateTime time;
  final String title;
  final String description;
  final String icon;
  final bool isActive;
  final bool isLast;
  const ScheduleItem({
    super.key,
    required this.time,
    required this.title,
    required this.description,
    required this.icon,
    this.isActive = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${time.hour}:${time.minute}',
          style: AppTypography.s18w4cB,
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(
                    color: isActive
                        ? AppColors.brightRedOrange
                        : AppColors.greyColor9F,
                    width: 2),
                color:
                    isActive ? AppColors.brightRedOrange : AppColors.whiteColor,
                shape: BoxShape.circle,
              ),
              child: isActive
                  ? const Icon(Icons.location_on, size: 14, color: Colors.white)
                  : null,
            ),
            if (!isLast)
              Container(
                width: 2,
                height: 70,
                color: isActive
                    ? AppColors.brightRedOrange
                    : AppColors.greyColor9F,
              ),
          ],
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
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Image.network(icon),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
