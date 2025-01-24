import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class CustomBar extends StatelessWidget implements PreferredSizeWidget {
  final String? text;
  final Widget? icon;
  const CustomBar({super.key, this.text, this.icon});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              context.router.canPop()
                  ? GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greyColorG5A,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            Assets.icon.arrowLeft,
                          ),
                        ),
                      ),
                    )
                  : SizedBox(),
              text != null
                  ? Text(
                      text!,
                      style: AppTypography.s24w6cB,
                    )
                  : Text(''),
              icon != null
                  ? GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greyColorG5A,
                        ),
                        child: Center(
                          child: SvgPicture.asset(Assets.icon.scan),
                        ),
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
