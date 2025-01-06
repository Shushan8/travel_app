import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/core/consts/colors.dart';

class AuthIcon extends StatelessWidget {
  final String assetsIcon;
  const AuthIcon({
    super.key,
    required this.assetsIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.greyColorE,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Center(
            child: SvgPicture.asset(assetsIcon),
          ),
        ),
      ),
    );
  }
}
