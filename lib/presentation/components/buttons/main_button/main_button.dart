import 'package:flutter/cupertino.dart';
import 'package:voco_test_case/utilities/constants/color_constants/color_constants.dart';
import 'package:voco_test_case/utilities/constants/text_style_constants/text_style_constants.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.buttonText, required this.buttonOnPressed, this.buttonMinimumSize, this.buttonPadding, this.buttonWidth, this.buttonHeight}) : super(key: key);

  final String buttonText;
  final VoidCallback buttonOnPressed;
  final double? buttonMinimumSize;
  final EdgeInsets? buttonPadding;
  final double? buttonWidth;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: CupertinoButton(
        color: ColorConstants().primary,
        minSize: buttonMinimumSize ?? 0,
        padding: buttonPadding ?? EdgeInsets.zero,
        child: Text(buttonText, style: TextStyleConstants().w600s16White),
        onPressed: () => buttonOnPressed(),
      ),
    );
  }
}
