import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        controller: emailController,
        keyBoardTyp: TextInputType.emailAddress,
        context: context,
        text: 'البريد الألكتروني',
        validateText: 'برجاء ادخال البريد الألكتروني',
        obscure: false);
  }
}
