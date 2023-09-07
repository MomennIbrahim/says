import 'package:flutter/material.dart';
import 'package:says_app/core/widgets/custom_buttom.dart';
import 'package:says_app/core/widgets/custom_text_field.dart';
import 'package:says_app/features/home/presentation/views/widgets/container_on_stack.dart';
import 'package:says_app/features/settings/presentation/views/widgets/current_email_text_field.dart';
import 'package:says_app/features/settings/presentation/views/widgets/current_password_text_field.dart';
import 'package:says_app/features/settings/presentation/views/widgets/custom_body.dart';
import 'package:says_app/features/settings/presentation/views/widgets/new_email_text_field.dart';

class ChangeEmailAddressViewBody extends StatelessWidget {
  ChangeEmailAddressViewBody({super.key});

  TextEditingController currentEmailController = TextEditingController();
  TextEditingController newEmailController = TextEditingController();
  TextEditingController currentPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            const ContainerOnStack(text: 'تغيير البريد الألكتروني'),
            CustomBody(
                body: Column(
              children: [
                const SizedBox(height: 44.0,),
                CurrentEmailTextField(currentEmailController: currentEmailController),
                NewEmailTextField(newEmailController: newEmailController),
                CurrentPasswordTextField(currentPasswordController: currentPasswordController),
                const SizedBox(height: 12.0,),
                CustomButton(text: 'حفظ', onPressed: (){}),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
