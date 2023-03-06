import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/common_pages/new_password_screen.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_graduation_project/core/app_color.dart';
import 'package:flutter_graduation_project/views/ottp_field.dart';
import 'package:flutter_graduation_project/widgets/cutome_button.dart';
import 'package:sizer/sizer.dart';

class OttpScreen extends StatelessWidget {
  const OttpScreen({super.key});
  static String id = "OttpScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Text(
                ConstanstString.passwordRecovery,
                style: TextStyle(
                    color: ColorManger.darkBlue,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Center(
              child: Text(
                ConstanstString.enterCode,
                style: TextStyle(color: ColorManger.darkBlue, fontSize: 15.sp),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OttpTextField(),
                OttpTextField(),
                OttpTextField(),
                OttpTextField(),
              ],
            ),
            CustomeButton(
                txt: ConstanstString.send,
                function: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, NewPasswordScreen.id, (route) => false);
                })
          ],
        ),
      ),
    );
  }
}
