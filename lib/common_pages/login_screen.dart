import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/common_pages/forget_password_screen.dart';
import 'package:flutter_graduation_project/common_pages/sign_up_screen.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_graduation_project/core/app_color.dart';
import 'package:flutter_graduation_project/user_screens/user_main_screen.dart';
import 'package:flutter_graduation_project/views/custome_card.dart';
import 'package:flutter_graduation_project/widgets/custome_text_form_field.dart';
import 'package:flutter_graduation_project/widgets/cutome_button.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class LoingScreen extends StatefulWidget {
  LoingScreen({super.key});
  static String Id = "LoginScreen";

  @override
  State<LoingScreen> createState() => _LoingScreenState();
}

class _LoingScreenState extends State<LoingScreen> {
  bool boxCheck = true;
  bool isUser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
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
              height: 10.h,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isUser = false;
                      });
                    },
                    child: CustomeCard(
                      txt: ConstanstString.company,
                      colorContainerGround:
                          (!isUser) ? ColorManger.darkBlue : ColorManger.white,
                      fieldsColors:
                          (!isUser) ? ColorManger.white : ColorManger.black,
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isUser = true;
                      });
                    },
                    child: CustomeCard(
                      txt: ConstanstString.user,
                      colorContainerGround:
                          (isUser) ? ColorManger.darkBlue : ColorManger.white,
                      fieldsColors:
                          (isUser) ? ColorManger.white : ColorManger.black,
                    ),
                  ),
                ),
              ],
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
                    child: TextButton(
                      child: Text(
                        ConstanstString.forgetPassword,
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: ColorManger.darkBlue,
                            fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, ForgetPasswordScreen.id, (route) => false);
                      },
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomeButton(
                txt: ConstanstString.login,
                function: () {
                  if (isUser) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, UserMainScreen.id, (route) => false);
                  }
                }),
            CustomeButton(
                txt: ConstanstString.signUp,
                function: () {
                  // go to sign page
                  Navigator.pushNamedAndRemoveUntil(
                      context, SignUpScreen.Id, (route) => false);
                }),
          ],
        ),
      ),
    );
  }
}
