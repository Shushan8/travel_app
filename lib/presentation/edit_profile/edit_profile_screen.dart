import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/application/user_create/bloc/user_bloc.dart';
import 'package:travel_app/application/user_get/bloc/user_get_bloc.dart';
import 'package:travel_app/di/injectable.dart';
import 'package:travel_app/domain/user/entity/user.dart';
import 'package:travel_app/presentation/auth/widget/input_field.dart';
import 'package:travel_app/presentation/core/router/app_router.dart';
import 'package:travel_app/presentation/core/widget/custom_bar.dart';
import 'package:travel_app/presentation/core/widget/gradient_button.dart';

@RoutePage()
class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController userNameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      appBar: CustomBar(
        text: 'Edit Profile',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                      failure: (message) => Text(
                        'Error: $message',
                        style: TextStyle(color: Colors.red),
                      ),
                      loaded: (user) {
                        nameController.text = user.name;
                        userNameController.text = user.userName;
                        phoneController.text = user.phoneNumber;
                        emailController.text = user.email;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            const Text('Name'),
                            InputField(
                              hintText: '',
                              controller: nameController,
                            ),
                            const SizedBox(height: 20),
                            const Text('Username'),
                            InputField(
                              hintText: user.userName,
                              controller: userNameController,
                            ),
                            const SizedBox(height: 20),
                            const Text('Phone Number'),
                            InputField(
                              hintText: user.phoneNumber,
                              controller: phoneController,
                            ),
                            const SizedBox(height: 20),
                            const Text('Email'),
                            InputField(
                              hintText: 'Enter your email',
                              controller: emailController,
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 60),
              GradientButton(
                title: 'Save',
                onTap: () {
                  context.router.push(ProfileRoute());
                  final userBloc = context.read<UserBloc>();
                  userBloc.add(
                    UserEvent.editUser(
                      AppUser(
                        id: FirebaseAuth.instance.currentUser!.uid,
                        name: nameController.text,
                        userName: userNameController.text,
                        phoneNumber: phoneController.text,
                        email: emailController.text,
                        photo: '',
                      ),
                    ),
                  );
                },
                begin: Alignment.topCenter,
                horizontal: 10,
                vertical: 10,
                borderRadius: 10,
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
