import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:sizer/sizer.dart';

import '../core/app_color.dart';

class AppliedJobCard extends StatelessWidget {
  Color color;
  String txt;
  AppliedJobCard({super.key, required this.color, required this.txt});

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
                    txt,
                    style: TextStyle(
                        color: color,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Divider(
              color: ColorManger.black,
            ),
          ],
        ),
      ),
    );
  }
}
