import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custome_text_form_field.dart';
import '../widgets/cutome_button.dart';

class EditPasswrodScreen extends StatelessWidget {
  const EditPasswrodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: Text(
                ConstanstString.editPassword,
                style: TextStyle(
                    color: ColorManger.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomeTextFormField(
                label: ConstanstString.oldPassword,
                hint: ConstanstString.oldPassword,
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
            SizedBox(
              height: 20.h,
            ),
            CustomeButton(txt: ConstanstString.confirm, function: () {}),
          ],
        ),
      ),
    );
  }
}
