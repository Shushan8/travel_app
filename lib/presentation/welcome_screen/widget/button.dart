import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final void Function() buttonFunction;
  final bool begin;
  const Button({
    super.key,
    required this.buttonText,
    required this.buttonFunction,
    required this.begin,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.brightRedOrange,
              AppColors.lightOrange3,
            ],
            begin: begin ? Alignment.topCenter : Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ElevatedButton(
          onPressed: buttonFunction,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            buttonText,
            style: AppTypography.s20w6h30cW,
          ),
        ),
      ),
    );
  }
}
