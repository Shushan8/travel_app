import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';

class SocialIcons extends StatelessWidget {
  final String assetsIcon;
  final void Function() onTap;
  const SocialIcons({
    super.key,
    required this.assetsIcon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
