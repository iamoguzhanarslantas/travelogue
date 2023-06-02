import 'package:flutter/material.dart';
import 'package:travelogue/src/common/common.dart' show AppColors;

class LargeBoldText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final FontWeight fontWeight;
  const LargeBoldText({
    super.key,
    required this.text,
    this.color = AppColors.largeTextColor,
    this.size = 28,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
