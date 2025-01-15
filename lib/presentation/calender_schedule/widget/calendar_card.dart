import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class CalendarCard extends StatelessWidget {
  const CalendarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        image: DecorationImage(
          
          image: AssetImage(Assets.images.sliderImage.path),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 30, bottom: 10,
      
        left: 10
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Manali', style: AppTypography.s14w4cW,),
            Text('Rohtang Tunnel',style: AppTypography.s26w4cW,),
          ],
        ),
      ),
    );
  }
}
