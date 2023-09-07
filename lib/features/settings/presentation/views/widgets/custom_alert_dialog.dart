import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/custom_divider.dart';
import 'alert_dialog_item.dart';

class LanguageAlertDialog extends StatelessWidget {
  const LanguageAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AlertDialog(
        title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Text(
                    'اللغة',
                    style: Styles.style16.copyWith(color: Colors.black),
                  )),
                  AlertDialogItem(
                      text: 'العربية',
                      onPressed: () {
                        print('Arabic Language');
                      },
                      isEnglish: true),
                  const CustomDiviver(),
                  AlertDialogItem(
                      text: 'English',
                      isEnglish: false,
                      onPressed: () {
                        print('English Language');
                      }),
                ],
              ),
      ),
    );
  }
}
