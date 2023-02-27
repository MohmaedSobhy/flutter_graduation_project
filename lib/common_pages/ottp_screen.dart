import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_graduation_project/views/ottp_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OttpScreen extends StatelessWidget {
  const OttpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ConstanstString.passwordRecovery,
              style: TextStyle(
                  color: ColorManger.darkBlue,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              ConstanstString.enterCode,
              style: TextStyle(color: ColorManger.darkBlue, fontSize: 15.sp),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                OttpTextField(),
                OttpTextField(),
                OttpTextField(),
                OttpTextField(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
