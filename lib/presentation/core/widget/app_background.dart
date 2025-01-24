import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            Assets.images.background.path,
          ),
        ),
      ),
      child: child,
    );
  }
}
