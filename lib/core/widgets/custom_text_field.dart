import 'package:flutter/material.dart';
import 'package:says_app/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
        required this.controller,
        required this.keyBoardTyp,
        required this.context,
        required this.text,
        required this.validateText,
        this.icon,
        this.onSubmitted,
        this.widget,
        required this.obscure,
        this.suffixIcon});

  final TextEditingController controller;
  final TextInputType keyBoardTyp;
  final BuildContext context;
  final String text;
  final Icon? icon;
  final Function? onSubmitted;
  final String validateText;
  final Widget? widget;
  final IconButton? suffixIcon;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: TextFormField(
          controller: controller,
          obscureText: obscure,
          keyboardType: keyBoardTyp,
          decoration: InputDecoration(
              border: outLineInputBorder(),
              enabledBorder: outLineInputBorder(),
              focusedBorder: outLineInputBorder(),
              hintText: text,
              hintStyle: Styles.style14.copyWith(color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: icon,
              prefix: widget,
              suffixIcon: suffixIcon,
              iconColor: Colors.black),
          onFieldSubmitted: (String value) {
            // onSubmitted!(value);
          },
          validator: (value) {
            if (value!.isEmpty) {
              return validateText;
            }
            return null;
          },
        ),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(10.0));
  }
}