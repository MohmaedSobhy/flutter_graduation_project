import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/common_pages/forget_password_screen.dart';
import 'package:flutter_graduation_project/common_pages/login_screen.dart';
import 'package:flutter_graduation_project/common_pages/new_password_screen.dart';
import 'package:flutter_graduation_project/common_pages/ottp_screen.dart';
import 'package:flutter_graduation_project/common_pages/sign_up_screen.dart';
import 'package:flutter_graduation_project/user_screens/user_main_screen.dart';
import 'package:flutter_graduation_project/user_screens/user_profile.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(primaryColor: Colors.red),
          debugShowCheckedModeBanner: false,
          home: const UserProfileScreen(),
          routes: {
            LoingScreen.Id: (context) => LoingScreen(),
            SignUpScreen.Id: (context) => const SignUpScreen(),
            ForgetPasswordScreen.id: (context) => const ForgetPasswordScreen(),
            OttpScreen.id: (context) => const OttpScreen(),
            NewPasswordScreen.id: (context) => const NewPasswordScreen(),
            UserMainScreen.id: (context) => const UserMainScreen(),
            UserProfileScreen.id: (context) => UserProfileScreen(),
          },
        );
      },
    );
  }
}
