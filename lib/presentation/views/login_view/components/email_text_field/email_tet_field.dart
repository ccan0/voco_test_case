import 'package:flutter/material.dart';
import 'package:voco_test_case/presentation/components/text_fields/main_text_field/main_text_fields.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key? key, required this.controller, required this.validation}) : super(key: key);

  final TextEditingController controller;
  final Function(String?) validation;

  @override
  Widget build(BuildContext context) {
    return MainTextField(
      controller: controller,
      hintText: "E-Posta",
      keyboardType: TextInputType.emailAddress,
      validator: (value) => validation(value),
    );
  }
}
