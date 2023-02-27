import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_graduation_project/views/custome_card.dart';
import 'package:flutter_graduation_project/widgets/cutome_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custome_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Text(
                ConstanstString.login,
                style: TextStyle(
                    color: ColorManger.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomeCard(
                    txt: ConstanstString.company,
                  ),
                ),
                Expanded(
                  child: CustomeCard(
                    txt: ConstanstString.user,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomeTextFormField(
                label: ConstanstString.userName,
                hint: ConstanstString.userName,
                inputType: TextInputType.emailAddress,
                PrefixIcon: Icon(
                  Icons.email,
                  color: ColorManger.darkBlue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomeTextFormField(
                label: ConstanstString.emailLabel,
                hint: ConstanstString.emailHint,
                inputType: TextInputType.emailAddress,
                PrefixIcon: Icon(
                  Icons.email,
                  color: ColorManger.darkBlue,
                ),
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
            const SizedBox(
              height: 10.0,
            ),
            CustomeButton(txt: ConstanstString.signUp, function: () {}),
            CustomeButton(txt: ConstanstString.login, function: () {}),
          ],
        ),
      ),
    );
  }
}
