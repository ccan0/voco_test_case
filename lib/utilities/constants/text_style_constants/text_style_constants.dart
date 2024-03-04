import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voco_test_case/utilities/constants/color_constants/color_constants.dart';

class TextStyleConstants {
  static final TextStyleConstants _instance = TextStyleConstants._internal();

  factory TextStyleConstants() {
    return _instance;
  }

  TextStyleConstants._internal();

  TextStyle w600s16Black = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorConstants().black,
  );

  TextStyle w600s16DarkGrey = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorConstants().darkGrey,
  );

  TextStyle w600s16White = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorConstants().white,
  );

  TextStyle w300s13Black = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w300,
    color: ColorConstants().black,
  );
}