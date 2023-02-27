import 'package:flutter/material.dart';
import 'package:flutter_graduation_project/constanst.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType inputType;
  final bool? obscureText;
  final Icon? suffixIcon;
  final Icon PrefixIcon;
  const CustomeTextFormField(
      {super.key,
      required this.label,
      required this.inputType,
      required this.hint,
      required this.PrefixIcon,
      this.obscureText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: (obscureText == null) ? false : obscureText!,
      decoration: InputDecoration(
        hintText: hint,
        label: Text(
          label,
          style: TextStyle(color: ColorManger.darkBlue),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: PrefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManger.darkBlue)),
      ),
    );
  }
}
