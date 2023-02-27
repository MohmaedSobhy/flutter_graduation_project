import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
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
              },
            ),
            CustomeButton(
                txt: ConstanstString.signUp,
                function: () {
                  // navigat to signUp Screen
                }),
          ],
        ),
      ),
    );
  }
}
