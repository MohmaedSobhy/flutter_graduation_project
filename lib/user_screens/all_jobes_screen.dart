import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../views/job_card.dart';

class AllJobesScreens extends StatelessWidget {
  const AllJobesScreens({super.key});
  static String id = "AllJobesScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return TestingJobCard();
            },
          ),
        ),
      ),
    );
  }
}
