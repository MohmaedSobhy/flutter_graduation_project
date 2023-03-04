import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_graduation_project/user_screens/all_jobes_screen.dart';
import 'package:flutter_graduation_project/user_screens/applied_jobes.dart';
import 'package:flutter_graduation_project/user_screens/home_screen.dart';
import 'package:flutter_graduation_project/user_screens/search_screen.dart';

class UserMainScreen extends StatefulWidget {
  const UserMainScreen({super.key});
  static String id = "UserMainScreen";
  @override
  State<UserMainScreen> createState() => _UserMainScreenState();
}

class _UserMainScreenState extends State<UserMainScreen> {
  int currentIndex = 0;

  List<Widget> pages = const [
    HomeScreen(),
    AllJobesScreens(),
    SearchScreen(),
    AppliedAllJobes(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          curve: Curves.easeIn,
          showElevation: true,
          backgroundColor: ColorManger.darkBlue,
          items: [
            BottomNavyBarItem(
              activeColor: Colors.black,
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text('Home'),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              activeColor: Colors.black,
              icon: Icon(
                Icons.apps,
                color: ColorManger.white,
              ),
              title: const Text('All Jobs'),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              activeColor: Colors.black,
              icon: Icon(
                Icons.search,
                color: ColorManger.white,
              ),
              title: const Text('Search'),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              activeColor: Colors.black,
              icon: Icon(
                Icons.check_circle,
                color: ColorManger.white,
              ),
              title: const Text('All Jobes'),
              textAlign: TextAlign.center,
            ),
          ],
          onItemSelected: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}
