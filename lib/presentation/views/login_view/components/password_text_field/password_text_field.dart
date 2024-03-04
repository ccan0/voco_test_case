import 'package:flutter/material.dart';
import 'package:voco_test_case/presentation/components/text_fields/main_text_field/main_text_fields.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key, required this.controller, required this.validation}) : super(key: key);

  final TextEditingController controller;
  final Function(String?) validation;

  @override
  Widget build(BuildContext context) {
    return MainTextField(controller: controller, hintText: "Şifre", validator: (value) => validation(value), isPassword: true);
  }
}
