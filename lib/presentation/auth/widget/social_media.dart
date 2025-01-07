import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/auth/widget/social_icons.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcons(assetsIcon: Assets.icon.google),
        SizedBox(width: 10),
        SocialIcons(assetsIcon: Assets.icon.fb),
        SizedBox(width: 10),
        SocialIcons(assetsIcon: Assets.icon.apple),
      ],
    );
  }
}
