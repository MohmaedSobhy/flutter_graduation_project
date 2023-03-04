import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/views/job_card.dart';
import 'package:sizer/sizer.dart';

import '../constanst.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = "UserHomeScree";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManger.whiteBlue,
        appBar: AppBar(
          backgroundColor: ColorManger.darkBlue,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(ConstanstString.imageUrl),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Noor Ali",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
              ),
              Text(
                "Graphic Designer",
                style: TextStyle(fontSize: 10.sp),
              )
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          ],
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const JobCared();
            },
          ),
        ));
  }
}
