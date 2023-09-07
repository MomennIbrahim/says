import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:says_app/core/utils/app_router.dart';
import 'package:says_app/core/utils/constatnce.dart';
import 'package:says_app/core/utils/styles.dart';
import 'package:says_app/features/home/presentation/views/widgets/container_on_stack.dart';
import 'package:says_app/features/home/presentation/views/widgets/custom_divider.dart';
import 'package:says_app/features/home/presentation/views/widgets/custom_vertical_divider.dart';
import 'package:says_app/features/settings/presentation/views/widgets/alert_dialog_item.dart';
import 'package:says_app/features/settings/presentation/views/widgets/custom_alert_dialog.dart';
import 'package:says_app/features/settings/presentation/views/widgets/custom_body.dart';
import 'package:says_app/features/settings/presentation/views/widgets/logout_alert_dialgo.dart';
import 'package:says_app/features/settings/presentation/views/widgets/setting_row.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ContainerOnStack(text: 'الأعدادات'),
        CustomBody(body:  Column(
          children: [
            const SizedBox(height: 60.0,),
            SettingRow(text: 'الحساب الشخصي',onPressed: (){
              GoRouter.of(context).push(AppRouter.kAccountInfoView);
            }),
            const Divider(thickness: 1.5,),
            SettingRow(text: 'تغير البريد الألكتروني',onPressed: (){
              GoRouter.of(context).push(AppRouter.kChangeEmailAddressView);
            }),
            const Divider(thickness: 1.5,),
            SettingRow(text: 'تغيير الرقم السري',onPressed: (){
              GoRouter.of(context).push(AppRouter.kChangePasswordView);

            }),
            const Divider(thickness: 1.5,),
            SettingRow(text: 'العربية',onPressed: (){
              showDialog(context: context, builder: (context)=> const LanguageAlertDialog());
            }),
            const Divider(thickness: 1.5,),
            SettingRow(text: 'خروج',onPressed: (){
              showDialog(context: context, builder: (context)=> const LogoutAlertDialog());

            }),
          ],
        )),
      ],
    );
  }
}
