import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeButton extends StatelessWidget {
  final String txt;
  final VoidCallback function;
  final double? hight;
  const CustomeButton(
      {super.key, required this.txt, required this.function, this.hight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: MaterialButton(
        onPressed: function,
        textColor: ColorManger.white,
        minWidth: double.infinity,
        color: ColorManger.darkBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            txt,
            style: TextStyle(fontSize: 15.sp),
          ),
        ),
      ),
    );
  }
}
