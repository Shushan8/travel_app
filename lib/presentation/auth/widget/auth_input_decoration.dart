import 'package:flutter/material.dart';
import 'package:travel_app/core/consts/colors.dart';

class AuthInputDecoration extends StatelessWidget {
  final bool authBorderSideNone;
  final String authHintText;
  const AuthInputDecoration(
      {super.key,
      required this.authBorderSideNone,
      required this.authHintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: authHintText,
        filled: true,
        fillColor: AppColors.whiteColor5,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: authBorderSideNone
              ? BorderSide(
                  color: AppColors.brightOrange,
                  width: 2,
                )
              : BorderSide(
                  color: AppColors.whiteColor5,
                ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.orange,
            width: 2,
          ),
        ),
      ),
    );
  }
}
