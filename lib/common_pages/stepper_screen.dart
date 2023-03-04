import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/steps_screens/step_one.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 600,
                color: Colors.red,
                child: Stepper(
                  type: StepperType.horizontal,
                  steps: [
                    Step(
                      isActive: currentStep >= 0,
                      title: Text("1"),
                      content: StepOneScreen(),
                    ),
                    Step(
                      isActive: currentStep >= 1,
                      title: Text("2"),
                      content: Container(),
                    ),
                    Step(
                      isActive: currentStep >= 2,
                      title: Text("3"),
                      content: Container(),
                    ),
                  ],
                ),
              ),
              // StepOneScreen(),
              // Spacer(),
              // CustomeButton(txt: "Hello", function: () {}),
              // Spacer(),
              // StepOneScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
