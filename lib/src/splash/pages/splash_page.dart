import 'package:flutter/material.dart';
import 'package:travelogue/src/common/common.dart'
    show AppColors, LargeBoldText, MediumText;

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
                top: 130,
                left: 28,
                right: 28,
              ),
              child: const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LargeBoldText(text: 'Trips'),
                      LargeBoldText(
                        text: 'Mountain',
                        color: AppColors.mediumTextColor,
                      ),
                      SizedBox(
                        width: 250,
                        child: MediumText(
                          text:
                              'Mountain hikes give you an incredible sense of freedom along with endurance tests.',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
