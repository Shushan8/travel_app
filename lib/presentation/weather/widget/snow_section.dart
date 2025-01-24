import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class SnowSection extends StatelessWidget {
  final Widget widget;
  const SnowSection({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  'Day 1',
                  style: AppTypography.s18w6cB,
                ),
                Text(
                  'July 14',
                  style: AppTypography.s16w4cG,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Day 2',
                  style: AppTypography.s18w6cB,
                ),
                Text(
                  'July 15',
                  style: AppTypography.s16w4cG,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Day 3',
                  style: AppTypography.s18w6cB,
                ),
                Text(
                  'July 16',
                  style: AppTypography.s16w4cG,
                ),
              ],
            ),
          ],
        ),
        Expanded(
          flex: 6,
          child: widget,
        )
      ],
    );
  }
}
