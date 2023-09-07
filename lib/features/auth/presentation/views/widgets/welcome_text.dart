import 'package:flutter/material.dart';

import '../../../../../core/utils/constatnce.dart';
import '../../../../../core/utils/styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Text(
          text,
          style: Styles.style25.copyWith(color: kPrimaryColor),
        ));
  }
}
