import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/common_pages/login_screen.dart';
import 'package:flutter_graduation_project/common_pages/sign_up_screen.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_graduation_project/core/app_color.dart';
import 'package:flutter_graduation_project/widgets/cutome_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Text(
              ConstanstString.welcome,
              style: TextStyle(
                  color: ColorManger.darkBlue,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2),
            ),
            CustomeButton(
              txt: ConstanstString.login,
              function: () {
                // navigat to login Screen
                Navigator.pushReplacementNamed(context, LoingScreen.Id);
              },
            ),
            CustomeButton(
                txt: ConstanstString.signUp,
                function: () {
                  Navigator.pushReplacementNamed(context, SignUpScreen.Id);
                }),
          ],
        ),
      ),
    );
  }
}
