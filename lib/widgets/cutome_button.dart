import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:sizer/sizer.dart';

class CustomeButton extends StatelessWidget {
  final String txt;
  final VoidCallback function;
  final double? hight;
  const CustomeButton(
      {super.key, required this.txt, required this.function, this.hight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
      child: MaterialButton(
        onPressed: function,
        textColor: ColorManger.white,
        color: ColorManger.darkBlue,
        minWidth: double.infinity,
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
