import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_graduation_project/core/app_color.dart';
import 'package:sizer/sizer.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});
  static String id = "UserProfileScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManger.darkBlue,
        title: Text(
          "PROFILE",
          style: TextStyle(color: ColorManger.white),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Container(
            color: ColorManger.darkBlue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(ConstanstString.imageUrl),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Noor Ali",
                  style: TextStyle(
                      color: ColorManger.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Junior Graphic Designer",
                  style: TextStyle(color: ColorManger.white, fontSize: 10.sp),
                ),
                SizedBox(
                  height: 1.h,
                )
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: Text(
                  "Complete your profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp,
                  ),
                ),
              ),
              Text(
                "(1/5)",
                style: TextStyle(
                  color: ColorManger.darkBlue,
                ),
              )
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              children: List.generate(5, (index) {
                return Expanded(
                  child: Container(
                    height: 1.h,
                    margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: index == 0 ? Colors.blue : Colors.black12,
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
