import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/application/bloc/auth_bloc.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/auth/widget/social_icons.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcons(
          onTap: () {
            context.read<AuthBloc>().add(
                  const AuthEvent.signInWithGoogle(),
                );
          },
          assetsIcon: Assets.icon.google,
        ),
        SizedBox(width: 10),
        SocialIcons(
          onTap: () {},
          assetsIcon: Assets.icon.fb,
        ),
        SizedBox(width: 10),
        SocialIcons(
          onTap: () {},
          assetsIcon: Assets.icon.apple,
        ),
      ],
    );
  }
}
