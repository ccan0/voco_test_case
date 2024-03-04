import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voco_test_case/presentation/components/base/request_indicator.dart';
import 'package:voco_test_case/presentation/components/buttons/main_button/main_button.dart';
import 'package:voco_test_case/presentation/views/login_view/components/email_text_field/email_tet_field.dart';
import 'package:voco_test_case/presentation/views/login_view/components/password_text_field/password_text_field.dart';
import 'package:voco_test_case/presentation/views/login_view/controller/login_view_controller.dart';
import 'package:voco_test_case/utilities/constants/asset_constants/asset_constants.dart';
import 'package:voco_test_case/utilities/constants/text_style_constants/text_style_constants.dart';

class LoginView extends ConsumerWidget {
  LoginView({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRequestProcess = ref.watch(loginViewControllerProvider);

    final loginController = ref.read(loginViewControllerProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: RequestIndicator(
          isRequestProcess: isRequestProcess,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  AssetConstants().logo,
                ),
                SizedBox(height: 50.h),
                Text(
                  "Lütfen giriş yapabilmek için kayıtı olduğunuz\ne-posta adresinizi ve şifrenizi girin",
                  textAlign: TextAlign.center,
                  style: TextStyleConstants().w300s13Black,
                ),
                SizedBox(height: 50.h),
                Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      EmailTextField(
                        controller: loginController.emailController,
                        validation: (value) => loginController.emailValidation(value),
                      ),
                      SizedBox(height: 15.h),
                      PasswordTextField(
                        controller: loginController.passwordController,
                        validation: (value) => loginController.passwordValidation(value),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                MainButton(
                  buttonText: "Giriş Yap",
                  buttonOnPressed: () => loginController.loginButtonOnPressed(formKey: formKey, context: context),
                  buttonWidth: 275.w,
                  buttonHeight: 50.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
