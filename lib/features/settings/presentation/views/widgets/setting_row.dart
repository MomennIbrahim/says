import 'package:flutter/material.dart';
import '../../../../../core/utils/constatnce.dart';
import '../../../../../core/utils/styles.dart';

class SettingRow extends StatelessWidget {
  const SettingRow({super.key, required this.text, required this.onPressed});

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text(
            text,
            style: Styles.style14,
          ),
          IconButton(
              onPressed: () {
                onPressed();
              },
              icon: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: kPrimaryColor,
              )),
        ],
      ),
    );
  }
}
