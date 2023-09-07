import 'package:flutter/material.dart';
import '../../../../../core/utils/constatnce.dart';
import '../../../../../core/utils/styles.dart';

class AlertDialogItem extends StatelessWidget {
  const AlertDialogItem({super.key, required this.text, required this.isEnglish, required this.onPressed});

  final String text;
  final Function onPressed;
  final bool isEnglish;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){onPressed();},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.style16.copyWith(color: Colors.black),
          ),
            IconButton(
              onPressed: () {
                onPressed();
              },
              icon: isEnglish? const Icon(
                Icons.check,
                color: kPrimaryColor,
                size: 16,
              ):const Icon(Icons.check_box_outline_blank,color: Colors.white,))
        ],
      ),
    );
  }
}
