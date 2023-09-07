import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        controller: passwordController,
        keyBoardTyp: TextInputType.visiblePassword,
        context: context,
        text: 'كلمة السر',
        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye)),
        validateText: 'برجاء ادخال كلمة السر',
        obscure: true);
  }
}
