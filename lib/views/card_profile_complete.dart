import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/core/app_color.dart';
import 'package:sizer/sizer.dart';

import '../widgets/cutome_button.dart';

class CardWidget extends StatelessWidget {
  final String txt;
  final IconData icon;
  final VoidCallback onpressed;
  final String buttonText;
  CardWidget(
      {super.key,
      required this.txt,
      required this.icon,
      required this.onpressed,
      required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 2.h),
      child: Card(
        elevation: 3,
        child: Container(
          width: 40.w,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorManger.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: ColorManger.black,
                size: 30,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                txt,
                style: TextStyle(color: ColorManger.black),
              ),
              CustomeButton(txt: buttonText, function: onpressed),
            ],
          ),
        ),
      ),
    );
  }
}
