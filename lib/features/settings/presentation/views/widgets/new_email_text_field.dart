import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class NewEmailTextField extends StatelessWidget {
  const NewEmailTextField({super.key, required this.newEmailController});

  final TextEditingController newEmailController;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: CustomTextField(
        controller: newEmailController,
        keyBoardTyp: TextInputType.emailAddress,
        context: context,
        text: 'البريد الألكتروني الجديد',
        validateText: 'برجاء ادخال البريد الألكتروني الجديد',
        obscure: false,
      ),
    );
  }
}
