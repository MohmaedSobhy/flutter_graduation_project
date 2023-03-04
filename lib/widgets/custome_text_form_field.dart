import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:sizer/sizer.dart';

class CustomeTextFormField extends StatelessWidget {
  String label;
  String hint;
  TextInputType inputType;
  bool? obscureText;
  Icon? suffixIcon;
  Icon PrefixIcon;
  CustomeTextFormField(
      {super.key,
      required this.label,
      required this.inputType,
      required this.hint,
      required this.PrefixIcon,
      this.obscureText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        controller: TextEditingController(),
        keyboardType: inputType,
        cursorColor: ColorManger.darkBlue,
        validator: (value) {
          return null;
        },
        obscureText: (obscureText == null) ? false : obscureText!,
        decoration: InputDecoration(
          hintText: hint,
          label: Text(
            label,
            style: TextStyle(color: ColorManger.darkBlue),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: PrefixIcon,
          prefixIconColor: ColorManger.darkBlue,
          suffixIconColor: ColorManger.darkBlue,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: ColorManger.darkBlue),
          ),
        ),
      ),
    );
  }
}
