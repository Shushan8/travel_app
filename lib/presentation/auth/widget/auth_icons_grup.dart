import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/auth/widget/auth_icon.dart';

class AuthIconsGrup extends StatelessWidget {
  const AuthIconsGrup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthIcon(assetsIcon: Assets.icon.google),
        SizedBox(width: 10),
        AuthIcon(assetsIcon: Assets.icon.fb),
        SizedBox(width: 10),
        AuthIcon(assetsIcon: Assets.icon.apple),
      ],
    );
  }
}
