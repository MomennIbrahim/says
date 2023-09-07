import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_text_field.dart';

class CurrentPasswordTextField extends StatelessWidget {
  const CurrentPasswordTextField({super.key, required this.currentPasswordController});

  final TextEditingController currentPasswordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: CustomTextField(
        controller: currentPasswordController,
        keyBoardTyp: TextInputType.emailAddress,
        context: context,
        text: 'الرقم السري الحالي',
        validateText: 'برجاء ادخال الرقم السري الحالي',
        obscure: true,
        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye_outlined)),
      ),
    );
  }
}
