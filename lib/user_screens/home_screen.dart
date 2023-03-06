import 'package:flutter/material.dart';
import 'package:flutter_badged/flutter_badge.dart';
import 'package:flutter_graduation_project/core/app_color.dart';
import 'package:flutter_graduation_project/user_screens/user_profile.dart';
import 'package:flutter_graduation_project/views/job_card.dart';
import 'package:sizer/sizer.dart';
import '../constanst.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = "UserHomeScree";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.white,
      appBar: AppBar(
        backgroundColor: ColorManger.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(UserProfileScreen.id);
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage(ConstanstString.imageUrl),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Noor Ali",
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: ColorManger.black),
            ),
            Text(
              "Graphic Designer",
              style: TextStyle(fontSize: 10.sp, color: ColorManger.black),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: FlutterBadge(
              icon: Icon(
                Icons.notifications,
                color: ColorManger.black,
                size: 30,
              ),
              itemCount: 2,
            ),
            onPressed: () {},
          )
        ],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 2.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 3.h, right: 10.w, left: 2.w),
              child: Text(
                "Create A Better Future For Your Self Here",
                maxLines: 2,
                style: TextStyle(
                    fontSize: 15.sp,
                    color: ColorManger.black,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return TestingJobCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
