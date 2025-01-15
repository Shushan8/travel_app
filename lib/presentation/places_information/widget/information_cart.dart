// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class InformationCart extends StatelessWidget {
  const InformationCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rohtang Tunnel',
                          style: AppTypography.s24w6cW,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              SvgPicture.asset(Assets.icon.location),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Himachal, India',
                                style: AppTypography.s18w4cW,
                              ),
                            ]),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Price',
                          style: AppTypography.s16w4cG,
                        ),
                        Text(
                          '299/-',
                          style: AppTypography.s26w4cG,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
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
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.greyColor,
                  ),
                  child: Center(
                    child: SvgPicture.asset(Assets.icon.archive),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
