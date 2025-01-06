import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/core/consts/colors.dart';
import 'package:travel_app/gen/assets.gen.dart';

class AuthAppBar extends StatelessWidget {
  const AuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.greyColorG5A,
            ),
            child: Center(
              child: SvgPicture.asset(Assets.icon.arrowLeft),
            ),
          ),
        ),
      ],
    );
  }
}
