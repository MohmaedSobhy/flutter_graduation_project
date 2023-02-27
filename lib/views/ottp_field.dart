import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constanst.dart';

class OttpTextField extends StatelessWidget {
  const OttpTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      height: 60.h,
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
