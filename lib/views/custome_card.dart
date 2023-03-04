import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomeCard extends StatelessWidget {
  final String txt;
  final Color colorContainerGround;
  final Color fieldsColors;
  const CustomeCard(
      {super.key,
      required this.txt,
      required this.colorContainerGround,
      required this.fieldsColors});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: colorContainerGround, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            size: 100.sp,
            color: fieldsColors,
          ),
          Text(
            txt,
            style: TextStyle(
                fontSize: 25.sp,
                color: fieldsColors,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
