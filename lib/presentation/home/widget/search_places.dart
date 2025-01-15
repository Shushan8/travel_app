import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/colors.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class SearchPlaces extends StatelessWidget {
  const SearchPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(21),
          borderSide: BorderSide(
            color: AppColors.greyColorD2,
          ),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(21),
          borderSide: BorderSide(
            color: AppColors.greyColorD2,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 11),
          child: Image.asset(Assets.images.burger.path, width: 10, height: 10,),
        ),
        hintText: "Search Places",
        hintStyle: AppTypography.s16w5h24cGF9,
        border: InputBorder.none,
      ),
    );
}
}