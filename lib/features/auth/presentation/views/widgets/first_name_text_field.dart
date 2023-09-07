import 'package:flutter/material.dart';
import 'package:says_app/core/widgets/custom_text_field.dart';

class FirstNameTextField extends StatelessWidget {
  const FirstNameTextField({super.key, required this.firstNameController});

  final TextEditingController firstNameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: firstNameController,
      keyBoardTyp: TextInputType.name,
      context: context,
      text: 'الأسم الأول',
      validateText: 'برجاء ادخال الأسم الأول',
      obscure: false,
    );
  }
}
