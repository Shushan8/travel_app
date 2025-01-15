import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/arrangement/widget/itinerary_item.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';
import 'package:travel_app/presentation/core/widget/gradient_button.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({super.key});

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
              flex: 3,
              child: Column(
                children: [
                  ItineraryItem(
                    time: "5:30",
                    title: "Wake up",
                    icon: Assets.images.image1556.path,
                  ),
                  ItineraryItem(
                    time: "7:30",
                    title: "City tour",
                    icon: Assets.images.image1508.path,
                  ),
                  ItineraryItem(
                    time: "8:30",
                    title: "Snow Boarding",
                    icon: Assets.images.a.path,
                  ),
                  ItineraryItem(
                    time: "9:30",
                    title: "Skydiving",
                    icon: Assets.images.image1468.path,
                    isLast: true,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.brightRedOrange,
                          AppColors.lightOrange3,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(247, 240, 240, 240),
                            const Color.fromARGB(184, 241, 237, 237),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                          child: Center(
                            child: Text(
                              'title',
                              style: AppTypography.s20w6cW,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GradientButton(
              title: 'Next step',
              onTap: () {
                context.router.push(PartnerRoute());
              },
              begin: Alignment.topLeft,
              horizontal: 1,
              vertical: 15,
              borderRadius: 10,
            ),
            SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}
