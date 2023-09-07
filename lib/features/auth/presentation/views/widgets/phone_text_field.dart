import 'package:flutter/material.dart';
import 'package:says_app/core/widgets/custom_text_field.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({super.key, required this.phoneController});

  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: phoneController,
      keyBoardTyp: TextInputType.phone,
      context: context,
      text: 'رقم التليفون',
      validateText: 'برجاء ادخال التليفون',
      obscure: false,
    );
  }
}
