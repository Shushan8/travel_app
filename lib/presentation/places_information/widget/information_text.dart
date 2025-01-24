import 'package:flutter/material.dart';
import 'package:travel_app/presentation/core/consts/typography.dart';

class InformationText extends StatefulWidget {
  const InformationText({super.key});

  @override
  InformationTextState createState() => InformationTextState();
}

class InformationTextState extends State<InformationText> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: FadingEffect(),
      child: Text(
        'Atal Tunnel is a highway tunnel built under the Rohtang Pass in the eastern Pir Panjal range of the Himalayas on the National Highway 3 in Himachal Pradesh, India. At a length of 9.02 km, it is the longest highway single-tube tunnel above 10,000 feet in the world. ',
        style: AppTypography.s18w5cG,
      ),
    );
  }
}

class FadingEffect extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromPoints(
      Offset(0, 0),
      Offset(size.width, size.height),
    );
    LinearGradient lg = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromARGB(0, 255, 255, 255),
        Color.fromARGB(200, 255, 255, 255),
        Color.fromARGB(231, 255, 255, 255)
      ],
    );
    Paint paint = Paint()..shader = lg.createShader(rect);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(FadingEffect linePainter) => false;
}
