import 'package:flutter/material.dart';
import 'package:says_app/core/utils/constatnce.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/custom_divider.dart';

class LogoutAlertDialog extends StatelessWidget {
  const LogoutAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        title: Column(
          children: [
            Center(
                child: Text(
              'تسجيل خروج',
              style: Styles.style16
                  .copyWith(color: kPrimaryColor, fontWeight: FontWeight.w500),
            )),
            const SizedBox(
              height: 3.0,
            ),
            Text(
              'هل أنت متأكد من ان تقوم بتسجيل الخروج',
              style: Styles.style12.copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 7.5,
            ),
            const CustomDiviver(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text('تسجيل خروج',
                        style: Styles.style12.copyWith(color: Colors.black))),
                TextButton(
                    onPressed: () {},
                    child: Text('الغاء',
                        style: Styles.style12.copyWith(color: Colors.black))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
