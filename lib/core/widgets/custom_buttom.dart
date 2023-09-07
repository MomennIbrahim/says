import 'package:flutter/material.dart';
import '../utils/constatnce.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    this.backgroundColor = kPrimaryColor,
    required this.text,
    this.textColor = Colors.white,
    this.paddingHorizontal = 17.5,
    required this.onPressed,
  });

  Color backgroundColor;
  Color textColor;
  double paddingHorizontal;
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: kPrimaryColor)),
        width: double.maxFinite,
        height: 55.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7.0),
          child: ElevatedButton(
            onPressed: () {
              onPressed();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              elevation: 2.0,
              shadowColor: Colors.grey,
            ),
            child: Text(
              text,
              style: Styles.style18.copyWith(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
