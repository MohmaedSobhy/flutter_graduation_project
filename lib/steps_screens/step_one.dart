import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/core/app_color.dart';
import 'package:sizer/sizer.dart';

class StepOneScreen extends StatelessWidget {
  const StepOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: double.infinity,
      child: Column(
        //    mainAxisAlignment: MainAxisAlignment.center,
        //  crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100.h,
            backgroundColor: ColorManger.darkBlue,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Add Profile Photo",
            style: TextStyle(
              color: ColorManger.darkBlue,
              fontSize: 25.sp,
            ),
          ),
        ],
      ),
    );
  }
}
