import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class ConfirmNewPasswordTextField extends StatelessWidget {
  const ConfirmNewPasswordTextField({super.key, required this.confirmNewEmailController});

  final TextEditingController confirmNewEmailController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: CustomTextField(
        controller: confirmNewEmailController,
        keyBoardTyp: TextInputType.emailAddress,
        context: context,
        text: 'أعد كلمة المرور',
        validateText: 'برجاء ادخال تأكيد كلمة المرور',
        obscure: true,
      ),
    );
  }
}
