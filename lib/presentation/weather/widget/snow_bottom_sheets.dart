import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';
import 'package:travel_app/presentation/core/widget/gradient_button.dart';
import 'package:travel_app/presentation/plan/widget/schedule_item.dart';

class SnowBottomSheets extends StatelessWidget {
  const SnowBottomSheets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
        ),
        decoration: BoxDecoration(
            color: AppColors.greyColorF8,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(37),
              topRight: Radius.circular(37),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
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
                    time: "15:30",
                    title: "Kothi Village",
                    description: "Pause and Reflect",
                    icon: Assets.images.cold2.path,
                  
                  ),
                   ScheduleItem(
                    time: "16:30",
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,),
              child: GradientButton(
                title: 'View specific itinerary',
                onTap: () {
                  context.router.push(SpecificItineraryRoute());
                },
                begin: Alignment.topLeft,
                horizontal: 1,
                vertical: 15,
                borderRadius: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
