import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custome_text_form_field.dart';
import '../widgets/cutome_button.dart';

class PasswordRevoryEmail extends StatelessWidget {
  const PasswordRevoryEmail({super.key});

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
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: ColorManger.darkBlue),
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
            const SizedBox(
              height: 10.0,
            ),
            CustomeButton(txt: ConstanstString.send, function: () {}),
          ],
        ),
      ),
    );
  }
}
