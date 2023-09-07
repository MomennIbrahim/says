import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class NewPasswordTextField extends StatelessWidget {
  const NewPasswordTextField({super.key, required this.newEmailController});

  final TextEditingController newEmailController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: CustomTextField(
        controller: newEmailController,
        keyBoardTyp: TextInputType.emailAddress,
        context: context,
        text: 'كلمة المرور الجديدة',
        validateText: 'برجاء ادخال كلمة المرور الجديدة',
        obscure: true,
        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye_outlined)),
      ),
    );
  }
}
