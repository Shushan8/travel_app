import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';

import '../../gen/assets.gen.dart';
import '../core/consts/colors.dart';
import '../core/consts/typography.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    List settingsName = [
      'Edit Profile',
      'Notification',
      'Shipping Address',
      'Change Password',
    ];
    List settingsIcon = [
      Assets.icon.a2User,
      Assets.icon.timeCircle,
      Assets.icon.location,
      Assets.icon.scan,
    ];

    return ListView.separated(
        itemBuilder: (context, index) => InkWell(
              onTap: () {
                context.router.push(
                  const EditProfileRoute(),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.brightOrange),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(9),
                        child: SvgPicture.asset(
                          settingsIcon[index],
                          color: AppColors.blackColor8F,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    settingsName[index],
                    style: AppTypography.s16w4cG73,
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    Assets.icon.iconArrowRighT,
                    color: AppColors.blackColor,
                  ),
                ],
              ),
            ),
        separatorBuilder: (context, index) {
          return SizedBox(height: 30);
        },
        itemCount: settingsName.length);
  }
}
