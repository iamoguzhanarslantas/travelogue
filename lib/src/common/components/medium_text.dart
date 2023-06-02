import 'package:flutter/material.dart';
import 'package:travelogue/src/common/common.dart' show AppColors;

class MediumText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final FontWeight fontWeight;
  const MediumText({
    super.key,
    required this.text,
    this.color = AppColors.mediumTextColor,
    this.size = 13,
    this.fontWeight = FontWeight.normal,
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
