import 'package:flutter/material.dart';
import 'package:travelogue/src/common/common.dart' show AppColors;

class ResponsiveButton extends StatelessWidget {
  final bool isResponsive;
  final double width;
  const ResponsiveButton({
    super.key,
    this.isResponsive = false,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: AppColors.mainColor,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SplashButtonIcon(size: 8),
          SplashButtonIcon(size: 13),
          SplashButtonIcon(size: 18),
        ],
      ),
    );
  }
}

class SplashButtonIcon extends StatelessWidget {
  final double size;
  const SplashButtonIcon({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.arrow_forward_ios_rounded,
      color: Colors.white,
      size: size,
    );
  }
}
