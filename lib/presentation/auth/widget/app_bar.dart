import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/gen/assets.gen.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        leading: context.router.canPop()
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
                    child: SvgPicture.asset(Assets.icon.arrowLeft),
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
