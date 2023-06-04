import 'package:flutter/material.dart';
import 'package:travelogue/src/common/common.dart' show AppColors;
import 'package:travelogue/src/home/home.dart'
    show BarItemPage, HomePage, MyPage, SearchPage;

class MainPage extends StatefulWidget {
  static const routeName = '/main';
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonBackground,
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: AppColors.buttonBackground,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.mediumTextColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            label: 'Bar',
            icon: Icon(Icons.bar_chart_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search_rounded),
          ),
          BottomNavigationBarItem(
            label: 'My',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
