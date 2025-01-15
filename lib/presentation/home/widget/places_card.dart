// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class PlacesCard extends StatelessWidget {
  const PlacesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            margin: EdgeInsets.symmetric(
              horizontal: 23,
              vertical: 10,
            ),
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Rohtang Tunnel,',
                    style: AppTypography.s13w6cW,
                    children: [
                      TextSpan(
                        text: ' Leh-Manali',
                        style: AppTypography.s13w5c,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icon.location),
                        SizedBox(width: 5),
                        Text(
                          'Himachal, India',
                          style: AppTypography.s11w4cG,
                        ),
                      ],
                    ),
                    Text(
                      '4.8',
                      style: AppTypography.s14w4cG,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
