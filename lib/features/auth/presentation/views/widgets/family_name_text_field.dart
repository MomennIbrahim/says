import 'package:flutter/material.dart';
import 'package:says_app/core/widgets/custom_text_field.dart';

class FamilyNameTextField extends StatelessWidget {
  const FamilyNameTextField({super.key, required this.familyNameController});

  final TextEditingController familyNameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: familyNameController,
      keyBoardTyp: TextInputType.name,
      context: context,
      text: 'أسم العائله',
      validateText: 'برجاء ادخال أسم العائله',
      obscure: false,
    );
  }
}
