import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_graduation_project/views/applied_job_card.dart';

class AppliedAllJobes extends StatelessWidget {
  const AppliedAllJobes({super.key});
  static String id = "UserAppliedAlLJobes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return (index % 2 == 0)
                ? AppliedJobCard(color: Colors.green, txt: "Accepted")
                : AppliedJobCard(
                    color: Colors.red,
                    txt: "Rejected",
                  );
          },
        ),
      ),
    );
  }
}
