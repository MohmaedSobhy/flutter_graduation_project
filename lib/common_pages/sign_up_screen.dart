import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/common_pages/login_screen.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_graduation_project/views/custome_card.dart';
import 'package:flutter_graduation_project/widgets/cutome_button.dart';
import 'package:sizer/sizer.dart';
import '../widgets/custome_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static String Id = "SignUpScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isUser = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: GlobalKey<FormState>(),
          child: ListView(
            children: [
              Center(
                child: Text(
                  ConstanstString.signUp,
                  style: TextStyle(
                      color: ColorManger.black,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 2.h,
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
                        colorContainerGround: (!isUser)
                            ? ColorManger.darkBlue
                            : ColorManger.white,
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
              SizedBox(
                height: 4.h,
              ),
              CustomeTextFormField(
                label: ConstanstString.userName,
                hint: ConstanstString.userName,
                inputType: TextInputType.emailAddress,
                PrefixIcon: Icon(
                  Icons.email,
                  color: ColorManger.darkBlue,
                ),
              ),
              CustomeTextFormField(
                label: ConstanstString.emailLabel,
                hint: ConstanstString.emailHint,
                inputType: TextInputType.emailAddress,
                PrefixIcon: Icon(
                  Icons.email,
                  color: ColorManger.darkBlue,
                ),
              ),
              CustomeTextFormField(
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
              CustomeTextFormField(
                label: ConstanstString.confirm,
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
              SizedBox(
                height: 2.h,
              ),
              CustomeButton(
                  txt: ConstanstString.signUp,
                  function: () {
                    //  valid data
                    // if user go use page
                    // if company go company page
                    if (isUser) {
                    } else {}
                  }),
              CustomeButton(
                  txt: ConstanstString.login,
                  function: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, LoingScreen.Id, (route) => false);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
