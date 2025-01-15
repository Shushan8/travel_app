import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/plan/widget/schedule_item.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
          color: AppColors.greyColorF8,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(37), topRight: Radius.circular(37))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 45,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.greyColor9F,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Schedule',
            style: AppTypography.s16w6CF2,
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              children: [
                ScheduleItem(
                  time: "12:30",
                  title: "Manali Mall Road",
                  description: "Start Your Adventure",
                  icon: Assets.images.cold.path,
                  isActive: true,
                ),
                ScheduleItem(
                  time: "14:30",
                  title: "Solang Valley",
                  description: "Feel the Thrill",
                  icon: Assets.images.cold1.path,
                ),
                ScheduleItem(
                  time: "17:30",
                  title: "Kothi Village",
                  description: "Pause and Reflect",
                  icon: Assets.images.cold2.path,
                  isLast: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
