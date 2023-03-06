import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/common_pages/ottp_screen.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_graduation_project/core/app_color.dart';
import 'package:flutter_graduation_project/widgets/cutome_button.dart';
import 'package:sizer/sizer.dart';

import '../widgets/custome_text_form_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});
  static String id = "ForgetPasswordScreen";
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
                "Password Recovery",
                style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w600,
                    color: ColorManger.darkBlue),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomeTextFormField(
              hint: ConstanstString.emailHint,
              PrefixIcon: const Icon(Icons.email),
              inputType: TextInputType.emailAddress,
              label: ConstanstString.emailLabel,
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomeButton(
                txt: "Send",
                function: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, OttpScreen.id, (route) => false);
                })
          ],
        ),
      ),
    );
  }
}
