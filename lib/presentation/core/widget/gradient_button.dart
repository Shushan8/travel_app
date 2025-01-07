import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class GradientButton extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final AlignmentGeometry  begin;
  final double horizontal;
  final double vertical;
  const GradientButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.begin,
    required this.horizontal,
    required this.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.brightRedOrange,
            AppColors.lightOrange3,
          ],
          begin: begin,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding:  EdgeInsets.symmetric(
            horizontal: horizontal,
            vertical: vertical,
          ),
          child: Center(
            child: Text(
              title,
              style: AppTypography.s20w6h30cW,
            ),
          ),
        ),
      ),
    );
  }
}
