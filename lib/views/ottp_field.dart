import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_graduation_project/core/app_color.dart';
import 'package:sizer/sizer.dart';
import '../constanst.dart';

class OttpTextField extends StatelessWidget {
  const OttpTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 15.w,
      height: 10.h,
      child: TextFormField(
        cursorColor: ColorManger.darkBlue,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManger.darkBlue)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorManger.darkBlue)),
        ),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
