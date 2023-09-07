import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class ConfirmPasswordTextField extends StatelessWidget {
  const ConfirmPasswordTextField({super.key, required this.confirmPasswordController});

  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        controller: confirmPasswordController,
        keyBoardTyp: TextInputType.visiblePassword,
        context: context,
        text: 'تأكيد كلمة السر',
        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye)),
        validateText: 'برجاء ادخال تأكيد كلمة السر',
        obscure: true);
  }
}
