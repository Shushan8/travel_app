import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Jojo 👋',
              style: AppTypography.s30w6,
            ),
            Text(
              'Explore the world',
              style: AppTypography.s20w5c9f,
            )
          ],
        ),
        CircleAvatar(
          backgroundImage: AssetImage(
            Assets.images.profileHeaderImage.path,
          ),
          radius: 28,
        ),
      ],
    );
  }
}
