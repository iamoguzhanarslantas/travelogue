import 'package:flutter/material.dart';
import 'package:travelogue/src/common/common.dart'
    show AppColors, LargeBoldText, MediumText, ResponsiveButton;

class SplashPage extends StatefulWidget {
  static const routeName = '/';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  List images = [
    'splash-one.png',
    'splash-two.png',
    'splash-three.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/${images[index]}',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(
                top: 100,
                left: 28,
                right: 28,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LargeBoldText(text: 'Trips'),
                      LargeBoldText(
                        text: 'Mountain',
                        color: AppColors.mediumTextColor,
                      ),
                      SizedBox(height: 13),
                      SizedBox(
                        width: 250,
                        child: MediumText(
                          text:
                              'Mountain hikes give you an incredible sense of freedom along with endurance tests.',
                        ),
                      ),
                      SizedBox(height: 28),
                      ResponsiveButton(width: 130),
                    ],
                  ),
                  Row(
                    children: List.generate(
                      images.length,
                      (indexSlider) {
                        return Container(
                          margin: const EdgeInsets.only(left: 3),
                          width: index == indexSlider ? 25 : 8,
                          height: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexSlider
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
