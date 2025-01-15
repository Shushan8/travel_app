import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';

class ButtonNavigation extends StatelessWidget {
  final int selectedIndex;

  const ButtonNavigation({super.key, required this.selectedIndex});

  void onItemTapped(BuildContext context, int index) {
    if (index == selectedIndex) return;

    switch (index) {
      case 0:
        context.router.replace(const HomeRoute());
        break;
      case 1:
        context.router.replace(const PlanRoute());
        break;
      case 2:
        context.router.replace(const HomeRoute());
        break;
      case 3:
        context.router.replace(const HomeRoute());
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      onTap: (index) => onItemTapped(context, index),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.icon.home,
            width: 20,
          ),
          label: ".",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.icon.timeCircle,
            width: 24,
          ),
          label: ".",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.icon.iconHeart,
            width: 20,
          ),
          label: ".",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            Assets.icon.iconUser,
            width: 18,
          ),
          label: ".",
        ),
      ],
    );
  }
}
