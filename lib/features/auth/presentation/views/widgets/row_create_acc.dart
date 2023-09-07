import 'package:flutter/material.dart';

import '../../../../../core/utils/constatnce.dart';

class RowCreateOrLoginAccount extends StatelessWidget {
  const RowCreateOrLoginAccount({super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1),
        Text(text2,style: const TextStyle(color: kYellowColor),),
      ],
    );
  }
}
