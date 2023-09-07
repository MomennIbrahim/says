import 'package:flutter/material.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height:51.0,child: Padding(
      padding: const EdgeInsets.only(right: 16.0,bottom: 3.0),
      child: VerticalDivider(color: Colors.grey[400],thickness: 2),
    ));
  }
}
