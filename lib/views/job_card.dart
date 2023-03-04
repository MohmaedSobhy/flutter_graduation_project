import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:sizer/sizer.dart';

class JobCared extends StatelessWidget {
  const JobCared({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Manager  -",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Business Development",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.money,
                    color: ColorManger.black,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "\$ 3000 perMonth",
                    style: TextStyle(color: Colors.black, fontSize: 12.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: ColorManger.black,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    child: Text(
                      "Cairo Almarge",
                      style: TextStyle(color: Colors.black, fontSize: 10.sp),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Full Time",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Divider(
              color: ColorManger.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Row(
                children: [
                  Icon(
                    Icons.badge,
                    color: ColorManger.black,
                  ),
                  SizedBox(width: 1.w),
                  Text(
                    "5 - 6 years",
                    style: TextStyle(color: ColorManger.black),
                  ),
                  const Spacer(),
                  const Text(
                    "Twiter",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/twiter.png"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
