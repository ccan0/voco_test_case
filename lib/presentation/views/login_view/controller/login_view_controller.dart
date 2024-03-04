// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:voco_test_case/services/auth_service/auth_service.dart';
import 'package:voco_test_case/utilities/constants/route_constants/route_constants.dart';

part 'login_view_controller.g.dart';

@riverpod
class LoginViewController extends _$LoginViewController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isRequestProcess = false;

  @override
  bool build() {
    return isRequestProcess;
  }

  String? emailValidation(String? value) {
    if (value == null || value.isEmpty) return "Lütfen bu alanı doldurun";

    if (!RegExp(r"^[a-zA-ZıĞğÜüİŞşÖöÇç0-9.a-zA-ZıĞğÜüİŞşÖöÇç0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-ZıĞğÜüİŞşÖöÇç0-9]+\.[a-zA-ZıĞğÜüİŞşÖöÇç]+").hasMatch(value)) {
      return "Lütfen uygun formatta e-posta adresi girin";
    }

    return null;
  }

  String? passwordValidation(String? value) {
    if (value == null || value.isEmpty) return "Lütfen bu alanı doldurun";

    return null;
  }

  void loginButtonOnPressed({required GlobalKey<FormState> formKey, required BuildContext context}) async{
    if(formKey.currentState!.validate()){
      try {
        isRequestProcess = true;
        state = isRequestProcess;

        FocusManager.instance.primaryFocus?.unfocus();

        await AuthService().login(email: emailController.text, password: passwordController.text);

        Navigator.pushNamedAndRemoveUntil(context, RouteConstants.usersView, (route) => route.isCurrent);

        isRequestProcess = false;
        state = isRequestProcess;
      } on DioException catch (exception) {
        isRequestProcess = false;
        state = isRequestProcess;

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(exception.response?.data["error"] ?? "")),
        );
      }


    }
  }
}
