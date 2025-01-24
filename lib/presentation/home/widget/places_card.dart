// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class PlacesCard extends StatelessWidget {
  final String image;
  final String address;
  final String shortName;
  final String name;
  final int star;
  const PlacesCard({
    super.key,
    required this.image,
    required this.address,
    required this.name,
    required this.shortName,
    required this.star,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
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
                      text: name,
                      style: AppTypography.s13w6cW,
                      children: [
                        TextSpan(
                          text: shortName,
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
                          SizedBox(
                            width: 150,
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              address,
                              style: AppTypography.s11w4cG,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        star.toString(),
                        style: AppTypography.s14w4cG,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
