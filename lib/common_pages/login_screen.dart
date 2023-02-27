import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_graduation_project/views/custome_card.dart';
import 'package:flutter_graduation_project/widgets/custome_text_form_field.dart';
import 'package:flutter_graduation_project/widgets/cutome_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class LoingScreen extends StatelessWidget {
  LoingScreen({super.key});
  bool boxCheck = true;
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
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
            Row(
              children: [
                Checkbox(
                    activeColor: ColorManger.darkBlue,
                    value: boxCheck,
                    onChanged: (check) {
                      boxCheck = !boxCheck;
                    }),
                Text(ConstanstString.rememberMe),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(right: 14.0),
                  child: TextButton(
                    onPressed: () {
                      // navigate to password Recovery Screen
                      // work hard
                    },
                    child: Text(
                      ConstanstString.forgetPassword,
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: ColorManger.darkBlue,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomeButton(txt: ConstanstString.login, function: () {}),
            CustomeButton(txt: ConstanstString.signUp, function: () {}),
          ],
        ),
      ),
    );
  }
}
