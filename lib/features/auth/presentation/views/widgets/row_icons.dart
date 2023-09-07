import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RowIcons extends StatelessWidget {
  const RowIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset('assets/images/Apple_Logo.svg'),
        SvgPicture.asset('assets/images/Google.svg'),
        SvgPicture.asset('assets/images/Facebook.svg'),
      ],
    );
  }
}
