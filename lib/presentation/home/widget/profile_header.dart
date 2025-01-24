import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/application/user_get/bloc/user_get_bloc.dart';
import 'package:travel_app/di/injectable.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocProvider(
          create: (context) => getIt<UserGetBloc>()
            ..add(
              const UserGetEvent.getUser(),
            ),
          child: BlocBuilder<UserGetBloc, UserGetState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Text('Welcome! Please load user data.'),
                loading: () => const Center(child: CircularProgressIndicator()),
                success: () => const Text('User created successfully!'),
                failure: (message) => Text('Error: $message',
                    style: TextStyle(color: Colors.red)),
                loaded: (user) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, ${user.name} 👋',
                      style: AppTypography.s30w6,
                    ),
                    Text(
                      'Explore the world',
                      style: AppTypography.s20w5c9f,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        CircleAvatar(
          backgroundImage: AssetImage(
            Assets.images.profileHeaderImage.path,
          ),
          radius: 28,
        ),
      ],
    );
  }
}
