import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeCard extends StatelessWidget {
  final String txt;
  const CustomeCard({super.key, required this.txt});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: ColorManger.darkBlue,
          borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            size: 100,
            color: ColorManger.white,
          ),
          Text(
            txt,
            style: TextStyle(
                fontSize: 25.sp,
                color: ColorManger.white,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
