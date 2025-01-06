import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Assets.images.background.image(
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
              child: Container(
            child: child,
          ))
        ],
      ),
    );
  }
}
