import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const InputField(
      {super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: AppColors.whiteColor5,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.whiteColor5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.brightRedOrange,
            width: 2,
          ),
        ),
      ),
    );
  }
}
