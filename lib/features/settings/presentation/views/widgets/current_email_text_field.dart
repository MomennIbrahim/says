import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class CurrentEmailTextField extends StatelessWidget {
  const CurrentEmailTextField({super.key, required this.currentEmailController});

  final TextEditingController currentEmailController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: CustomTextField(
        controller: currentEmailController,
        keyBoardTyp: TextInputType.emailAddress,
        context: context,
        text: 'البريد الألكتروني',
        validateText: 'برجاء ادخال البريد الألكتروني',
        obscure: false,
      ),
    );
  }
}
