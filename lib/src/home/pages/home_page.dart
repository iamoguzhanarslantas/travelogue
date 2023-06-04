import 'package:flutter/material.dart';
import 'package:travelogue/src/common/common.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 28,
                left: 22,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    size: 28,
                    color: AppColors.mainColor,
                  ),
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: AppColors.mainColor.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
