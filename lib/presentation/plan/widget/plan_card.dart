import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';
import 'package:travel_app/presentation/core/widget/gradient_button.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            Assets.images.sliderImage.path,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 6,
                child: Row(
                  children: [
                    SvgPicture.asset(Assets.icon.location141),
                    Text('Rohtang Tunnel,', style: AppTypography.s13w6cW)
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(Assets.images.image3.path),
                            radius: 20,
                          ),
                          Positioned(
                            right: 20,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(Assets.images.image1.path),
                              radius: 20,
                            ),
                          ),
                          Positioned(
                            right: 40,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(Assets.images.image2.path),
                              radius: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Spacer(),
              GradientButton(
                title: 'Manali',
                onTap: () {
                  context.router.push(
                    WeatherRoute(),
                  );
                },
                begin: Alignment.topLeft,
                horizontal: 21,
                vertical: 10,
                borderRadius: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
