import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/common_pages/ottp_screen.dart';
import 'package:flutter_graduation_project/common_pages/welcom_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: OttpScreen(),
        );
      },
    );
  }
}
