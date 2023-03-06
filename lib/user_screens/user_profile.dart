import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_graduation_project/core/app_color.dart';
import 'package:flutter_graduation_project/core/text_style_theme.dart';
import 'package:flutter_graduation_project/views/card_profile_complete.dart';
import 'package:flutter_graduation_project/widgets/cutome_button.dart';
import 'package:sizer/sizer.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});
  static String id = "UserProfileScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManger.darkBlue,
        title: Text(
          "PROFILE",
          style: TextStyle(color: ColorManger.white),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Container(
            color: ColorManger.darkBlue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(ConstanstString.imageUrl),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Noor Ali",
                  style: TextStyle(
                      color: ColorManger.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Junior Graphic Designer",
                  style: TextStyle(color: ColorManger.white, fontSize: 10.sp),
                ),
                SizedBox(
                  height: 1.h,
                )
              ],
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: Text(
                  "Complete your profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.sp,
                  ),
                ),
              ),
              Text(
                "(1/5)",
                style: TextStyle(
                  color: ColorManger.darkBlue,
                ),
              )
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              children: List.generate(5, (index) {
                return Expanded(
                  child: Container(
                    height: 1.h,
                    margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: index == 0 ? Colors.blue : Colors.black12,
                    ),
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                CardWidget(
                    txt: "Your Details",
                    icon: Icons.account_box_outlined,
                    onpressed: () {},
                    buttonText: "Complete"),
                CardWidget(
                    txt: "Upload Resume",
                    icon: Icons.upload_file_rounded,
                    onpressed: () {},
                    buttonText: "Upload"),
                CardWidget(
                    txt: "Add Experience",
                    icon: Icons.person,
                    onpressed: () {},
                    buttonText: "Complete"),
                CardWidget(
                    txt: "Your Details",
                    icon: Icons.person,
                    onpressed: () {},
                    buttonText: "Complete"),
              ]),
            ),
          ),
          const Text(
            "About Me",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Text(
              "I am a talented, ambitious and hardworking individual, with broad skills and experience in digital and printed marketing, social media and leading projects.",
              textAlign: TextAlign.center,
              style: txtStyleHeader,
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 0.5.h),
            child: Card(
              elevation: 1,
              child: ExpansionTile(
                title: Text(
                  "Address",
                  style: TextStyle(
                      color: ColorManger.black, fontWeight: FontWeight.bold),
                ),
                children: const [
                  ListTile(
                    leading: Icon(Icons.location_on_outlined),
                    title: Text("Cairo Almarge"),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 0.5.h),
            child: Card(
              elevation: 1,
              child: ExpansionTile(
                title: Text(
                  "Skilles",
                  style: TextStyle(
                      color: ColorManger.black, fontWeight: FontWeight.bold),
                ),
                children: [
                  ...List.generate(5, (index) {
                    return ListTile(
                      title: Text(
                        "Flutter Developer",
                        style: TextStyle(
                          color: ColorManger.black,
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 0.5.h),
            child: Card(
              elevation: 1,
              child: ExpansionTile(
                title: Text(
                  "Experiens",
                  style: TextStyle(
                      color: ColorManger.black, fontWeight: FontWeight.bold),
                ),
                children: const [
                  ListTile(
                    leading: Icon(
                      Icons.watch_later_outlined,
                      color: Colors.orange,
                    ),
                    title: Text("4 year Experiens in Field"),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 0.5.h),
            child: Card(
              elevation: 1,
              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                      color: ColorManger.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
