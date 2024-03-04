import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voco_test_case/utilities/constants/color_constants/color_constants.dart';

class RequestIndicator extends StatelessWidget {
  const RequestIndicator({Key? key, required this.child, required this.isRequestProcess}) : super(key: key);

  final Widget child;
  final bool isRequestProcess;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Visibility(
          visible: isRequestProcess,
          child: Container(
            width: 360.w,
            height: 690.h,
            alignment: Alignment.center,
            color: Colors.black.withOpacity(0.3),
            child: CircularProgressIndicator(color: ColorConstants().primary),
          ),
        ),
        child,
      ],
    );
  }
}
