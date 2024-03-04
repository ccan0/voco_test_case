import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voco_test_case/utilities/constants/color_constants/color_constants.dart';
import 'package:voco_test_case/utilities/constants/text_style_constants/text_style_constants.dart';

class MainTextField extends StatelessWidget {
  const MainTextField(
      {Key? key, required this.controller, this.keyboardType, this.isPassword, required this.hintText, required this.validator})
      : super(key: key);

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? isPassword;
  final String hintText;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.w,
      child: TextFormField(
        controller: controller,
        validator: (value) => validator(value),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
          hintText: hintText,
          hintStyle: TextStyleConstants().w600s16DarkGrey,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants().primary),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants().primary),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants().primary),
            borderRadius: BorderRadius.circular(15),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants().red),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants().red),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        keyboardType: keyboardType,
        style: TextStyleConstants().w600s16Black,
        obscureText: isPassword ?? false,
        autocorrect: !(isPassword ?? false),
        enableSuggestions: !(isPassword ?? true),
        cursorWidth: 1,
        cursorColor: ColorConstants().primary,
      ),
    );
  }
}
