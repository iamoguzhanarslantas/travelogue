import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  static const routeName = '/my';
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('My Page'),
    );
  }
}
