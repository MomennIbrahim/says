import 'package:flutter/material.dart';
import 'package:says_app/features/settings/presentation/views/widgets/confirm_new_password.dart';
import 'package:says_app/features/settings/presentation/views/widgets/new_password_text_field.dart';
import '../../../../../core/widgets/custom_buttom.dart';
import '../../../../home/presentation/views/widgets/container_on_stack.dart';
import 'current_password_text_field.dart';
import 'custom_body.dart';

class ChangePasswordViewbody extends StatelessWidget {
   ChangePasswordViewbody({super.key});

  TextEditingController currentPasswordController= TextEditingController();
  TextEditingController newEmailController= TextEditingController();
  TextEditingController confirmNewEmailController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            const ContainerOnStack(text: 'تغيير كلمة المرور'),
            CustomBody(
                body: Column(
                  children: [
                    const SizedBox(height: 44.0,),
                    CurrentPasswordTextField(currentPasswordController: currentPasswordController),
                    NewPasswordTextField(newEmailController: newEmailController),
                    ConfirmNewPasswordTextField(confirmNewEmailController: confirmNewEmailController),
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
