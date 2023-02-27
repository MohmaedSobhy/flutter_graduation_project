import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/widgets/custome_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constanst.dart';
import '../widgets/cutome_button.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ConstanstString.newPassword,
              style: TextStyle(
                  color: ColorManger.black,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomeTextFormField(
                label: ConstanstString.passWordLabel,
                hint: ConstanstString.passwordHint,
                inputType: TextInputType.visiblePassword,
                PrefixIcon: Icon(
                  Icons.lock,
                  color: ColorManger.darkBlue,
                ),
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: ColorManger.darkBlue,
                ),
                obscureText: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomeTextFormField(
                label: ConstanstString.confirmPassword,
                hint: ConstanstString.confirmPassword,
                inputType: TextInputType.visiblePassword,
                PrefixIcon: Icon(
                  Icons.lock,
                  color: ColorManger.darkBlue,
                ),
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: ColorManger.darkBlue,
                ),
                obscureText: true,
              ),
            ),
            CustomeButton(txt: ConstanstString.confirm, function: () {}),
          ],
        ),
      ),
    );
  }
}
