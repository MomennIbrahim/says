import 'package:flutter/material.dart';
import 'package:says_app/features/settings/presentation/views/widgets/setting_row.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200.0),
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(55.0),
              topRight: Radius.circular(55.0)),
          color: Color(0xffF4F4F4),
        ),
        child: body,
      ),
    );
  }
}
