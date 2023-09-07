import 'package:flutter/material.dart';
import 'package:says_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:says_app/features/auth/presentation/views/widgets/family_name_text_field.dart';
import 'package:says_app/features/auth/presentation/views/widgets/password_text_field.dart';
import 'package:says_app/features/auth/presentation/views/widgets/phone_text_field.dart';
import 'package:says_app/features/auth/presentation/views/widgets/row_create_acc.dart';
import 'package:says_app/features/auth/presentation/views/widgets/row_icons.dart';
import 'package:says_app/features/auth/presentation/views/widgets/welcome_text.dart';

import '../../../../../core/utils/constatnce.dart';
import '../../../../../core/widgets/custom_buttom.dart';
import 'confirm_password_text_field.dart';
import 'first_name_text_field.dart';
import 'name_text_field.dart';

class RegisterViewBody extends StatelessWidget {
   RegisterViewBody({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final firestNameController = TextEditingController();
  final familyController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.5),
          child: Column(
            children: [
              const WelcomeText(text: 'مرحبا بك'),
              const SizedBox(
                height: 10.0,
              ),
              FirstNameTextField(firstNameController: firestNameController),
              FamilyNameTextField(familyNameController: familyController,),
              EmailTextField(emailController: emailController),
              PasswordTextField(passwordController: passwordController),
              ConfirmPasswordTextField(confirmPasswordController: confirmPasswordController),
              PhoneTextField(phoneController: phoneController),
              const SizedBox(height: 20.0,),
              CustomButton(text: 'تسجيل الدخول',onPressed: (){}),
              const SizedBox(height: 26.0,),
              const Row(
                children: [
                  Expanded(child: Divider(color: Colors.black,)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('أو تواصل مع'),
                  ),
                  Expanded(child: Divider(color: Colors.black)),
                ],
              ),
              const SizedBox(height: 25.5,),
              const RowIcons(),
              const SizedBox(height: 22.0,),
              const RowCreateOrLoginAccount(text1: 'هل لديك حساب؟ ',text2: 'تسجيل دخول'),
            ],
          ),
        ),
      ),
    );
  }
}
