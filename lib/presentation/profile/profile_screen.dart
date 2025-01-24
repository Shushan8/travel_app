import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/application/user_get/bloc/user_get_bloc.dart';
import 'package:travel_app/di/injectable.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';
import 'package:travel_app/presentation/core/widget/button_navigation.dart';
import 'package:travel_app/presentation/core/widget/gradient_button.dart';
import 'package:travel_app/presentation/profile/settings.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Profile',
                style: AppTypography.s24w6cB,
              ),
              SizedBox(height: 20),
              InkWell(
                child: Stack(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: AppColors.deepOrangeRed,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.brightOrange),
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Padding(
                            padding: const EdgeInsets.all(9),
                            child: Icon(
                              Icons.edit,
                              color: AppColors.blueColorF,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              BlocProvider(
                create: (context) => getIt<UserGetBloc>()
                  ..add(
                    UserGetEvent.getUser(),
                  ),
                child: BlocBuilder<UserGetBloc, UserGetState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () =>
                          const Text('Welcome! Please load user data.'),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      success: () => const Text('User created successfully!'),
                      failure: (message) => Text('Error: $message',
                          style: TextStyle(color: Colors.red)),
                      loaded: (user) => Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                user.name,
                                style: AppTypography.s20w6cBA,
                              ),
                              SizedBox(width: 5),
                              Text(
                                user.userName,
                                style: AppTypography.s20w6cBA,
                              ),
                            ],
                          ),
                          Text(
                            user.email,
                            style: AppTypography.s16w4cBE,
                          ),
                          Text(
                            user.phoneNumber,
                            style: AppTypography.s16w4cBE,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Expanded(
                flex: 12,
                child: Settings(),
              ),
              SizedBox(height: 20),
              GradientButton(
                title: 'Sign Out',
                onTap: () {},
                begin: Alignment.topCenter,
                horizontal: 10,
                vertical: 10,
                borderRadius: 10,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ButtonNavigation(
        selectedIndex: 1,
      ),
    );
  }
}
