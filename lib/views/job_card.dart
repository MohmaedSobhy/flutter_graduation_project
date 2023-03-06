import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/core/app_color.dart';
import 'package:flutter_graduation_project/core/text_style_theme.dart';
import 'package:flutter_graduation_project/widgets/cutome_button.dart';
import 'package:sizer/sizer.dart';

class TestingJobCard extends StatelessWidget {
  const TestingJobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image(
            width: 15.w,
            height: 12.h,
            image: const AssetImage("assets/images/google.png"),
          ),
          SizedBox(
            width: 3.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Software Devleoper",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: header,
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: CustomeButton(txt: "Apply", function: () {}))
                  ],
                ),
                SizedBox(
                  height: 1.w,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.place_outlined,
                      size: 20,
                    ),
                    SizedBox(width: 1.w),
                    Expanded(
                      child: Text("Alexendria",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: bodytext),
                    ),
                    SizedBox(width: 5.w),
                    const Icon(
                      Icons.card_travel_rounded,
                      size: 20,
                    ),
                    SizedBox(width: 2.w),
                    Expanded(
                      child: Text("Full Time",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: bodytext),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
